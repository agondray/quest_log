import { ReactNode } from 'react';

type Children = Readonly<{ children: ReactNode }>

export default function DashboardLayout({ children }: Children) {
  // #todo: wrap in an AuthenticationWrapper
  // #todo: add TopNav and other navs
  return(
    <div className="container mx-auto border border-white">
      <div className="container mx-auto px-4">
        {children}
      </div>
    </div>
  )
}