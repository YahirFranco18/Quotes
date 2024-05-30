import { connectorMongoDB } 
    from "../config/Connectors.ts";  

import { Quote } 
from "../interfaces/Quote.ts";    


export const QuoteModel = connectorMongoDB.collection<Quote>("quote");