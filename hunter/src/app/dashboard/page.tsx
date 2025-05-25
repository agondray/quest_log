'use client'

import { useQuery } from '@tanstack/react-query'
import Link from 'next/link'

// temp - test api endpoint
import apiRouter from '@/api/router'
import Loading from '@/components/util/loading'
import Card from '@/components/card'
// #todo - add Link to go to card page

type CardData = {
	title: string,
	body: string,
}

// move to helpers
const isEmptyArray = (arr: []) => arr.length === 0;

export default function DashboardPage() {
	const { sampUsers } = apiRouter;
	const { data = [], isPending } = useQuery({ queryKey: ['sampleUsers'], queryFn: sampUsers.getUsers })

	const createQuestBoarTitle = `Create ${isEmptyArray(data) ? 'Your First' : 'New'} Quest Board`;

	return (
		<div>
      <h4>Placeholder Posts API JSON</h4>
      <div className="container flex flex-row flex-wrap items-start justify">
        {isPending ? <Loading /> : data?.slice(0, 8).map(({ title, body }: CardData, i: number) => (
        	<Link href="/">
        		<Card mapKey={i} title={title} body={body} />
        	</Link>	
    		))}
    		<Card title={createQuestBoarTitle} />
      </div>
		</div>
	)
}