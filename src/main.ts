import * as express from 'express';
import { RegisterRoutes } from './routes/routes';

const app = express();
const port = process.env.NODE_PORT;


RegisterRoutes(app);

app.listen(port, () => console.log(`Server started listening to port ${port}`));
