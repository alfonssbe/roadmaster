import { NextResponse } from 'next/server';
import type { NextRequest } from 'next/server';

const superadminOnlyRoutes = ['/createuser', '/customapi', '/settings', '/usersettings']

function isAdminRoute(url: string): boolean {
  return url.startsWith('/admin');
}

function isSuperAdminOnlyRoute(url: string): boolean {
  return superadminOnlyRoutes.some(route => url.endsWith(route));
}

export async function proxy(req: NextRequest) {
  const url = req.nextUrl.clone()

  //Reroute permanent
  if (url.pathname === '/comparison' || url.pathname === '/products') {
    return NextResponse.redirect(new URL('/drivers', req.url), 301);
  }


  if(!isAdminRoute(url.pathname)){
    return NextResponse.next()
  }

  const session = req.cookies.get("loginSession"); // ✅ Edge-compatible
  if(url.pathname === '/admin/sign-in' || url.pathname === '/admin/api/user/login'){
    if(!session){
      return NextResponse.next()
    }
    else{
      return NextResponse.redirect(new URL('/admin/', req.url));
    }
  }

  if(!session){
    return NextResponse.redirect(new URL('/admin/sign-in', req.url));
  }

  if(isSuperAdminOnlyRoute(url.pathname) ){
    if(session){
      return NextResponse.next();
    }
    else{
      return NextResponse.redirect(new URL('/admin/', req.url));
    }
  }
  
  return NextResponse.next();
}



export const config = {
  matcher: [
    '/((?!.*\\..*|_next).*)',
    '/',
    '/(api|trpc)(.*)'
  ],
}