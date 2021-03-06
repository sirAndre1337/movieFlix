import ContentLoader from "react-content-loader";
import { generateList } from "../../../../core/utils/list";

type Props = {
    numberOfLoaders: number
}

const MovieCardLoader = ({numberOfLoaders} : Props) => {

    const loaderItems = generateList(numberOfLoaders);

    return (
        <>
            {loaderItems.map(item => (
                <ContentLoader
                    speed={1}
                    width={250}
                    height={335}
                    viewBox="0 0 250 335"
                    backgroundColor="#ecebeb"
                    foregroundColor="#d6d2d2"
                    key={item}
                >
                    <rect x="0" y="0" rx="10" ry="10" width="250" height="335" />
                </ContentLoader>
                
            ))}
        </>
    )
}

export default MovieCardLoader