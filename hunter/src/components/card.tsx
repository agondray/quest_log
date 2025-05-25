// 'use client'

import { MouseEvent } from 'react'

type CardType = {
	mapKey?: number,
	title: string,
	titleOnly?: boolean,
	body?: string,
	handleCardClick?: (event: MouseEvent<HTMLDivElement>) => void,
	handleOptionsClick?: () => void,
}

export default function Card({ mapKey = undefined, title, titleOnly = false, body, handleCardClick, handleOptionsClick }: CardType) {
	return (
		<div key={mapKey} className="card select-none max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow-sm dark:bg-gray-800 dark:border-gray-700">
	    <h2>{title}</h2>
	    <p>{body}</p>
	  </div>
	)
}