import { wrapError } from 'ew-internals';

export default app => {
    app.get(
        '/',
        wrapError(async (req, res) => {
            res.status(200).send('Welcome, friend!');
        }),
    );
};
