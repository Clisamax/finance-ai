import { Button } from '@/app/_components/ui/button'
import { LogInIcon } from 'lucide-react'
import Image from 'next/image'

const LoginPage = () => {
  return (
    <div className="grid grid-cols-2 h-full">
      {/*Lado Esquerdo*/}
      <div className="h-full flex-col justify-center p-8 max-w-[550px] mx-auto flex">
        <Image
          src="/logo.svg"
          alt="Finance-ai"
          width={173}
          height={39}
          className="mb-8"
        />
        <h1 className="font-bold text-4xl mb-3">Bem Vindo</h1>
        <p className="text-muted-foreground mb-8">
          A Finance AI é uma plataforma de gestão financeira que utiliza AI para
          monitorar suas movimentações, e oferecer insights personalizados,
          facilitando o controle de seu orçamento.
        </p>
        <Button variant={'outline'}>
          <LogInIcon className='mr-2L' />
          Fazer login ou criar conta
        </Button>
      </div>

      {/*Lado Direito*/}
      <div className="relative w-full h-full">
        <Image
          src={'/login.png'}
          alt={'Faça Login'}
          fill
          className="object-cover"
        />
      </div>
    </div>
  )
}

export default LoginPage
