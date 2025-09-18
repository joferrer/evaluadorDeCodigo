import { defineCollection, z } from "astro:content";

const pruebasCollection = defineCollection({
    schema: z.object({
        id: z.string(),
        title: z.string(),
        description: z.string().optional(),
        testDuration: z.number().default(120),
        img: z.string().optional(),
        codigoBase: z.string().optional(),

    }),
})

export const collections = {
    pruebas: pruebasCollection,
}