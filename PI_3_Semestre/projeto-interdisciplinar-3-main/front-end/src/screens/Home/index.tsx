import React from "react";
import Lottie from "lottie-react";
import ScrollAnimate from "../../assets/lotties/lf30_editor_hj0yzmr0.json";
import { Container, Wrapper, ContentTitle, ContentPlanet, LottieScroll, ContentText } from './style';
import Planet from "../../components/Planet";
import AnimateWrittenText from "../../components/AnimateWrittenText";
import { Animator, ScrollContainer, ScrollPage, batch, FadeIn, StickyIn, ZoomIn } from "react-scroll-motion";
import Header from "../../components/Header";

function Home() {
    const text = [
        'Para muitos o lixo é o fim...',
        1000,
        'Para nós é apenas o começo!',
        1000,
    ]
    const ZoomInScrollOut = batch(StickyIn(), FadeIn(), ZoomIn());
    const style = {
        height: 70,
    };

    return (
        <>
            <ScrollContainer>
                <Header />
                <Container>

                    <Wrapper>
                        <ContentTitle>
                            <AnimateWrittenText
                                text={text}
                            />
                        </ContentTitle>

                        <ContentText>
                            <p>
                                Reciclamos para contribuir com a sustentabilidade
                                e qualidade de vida de nosso planeta
                                e das futuras gerações.
                            </p>
                            <p>
                                Temos a missão de gerar recursos sustentáveis
                                e proporcionar aos nossos clientes, soluções de descarte
                                de resíduos eletrônicos de forma eficaz e segura. Com ética,
                                trabalho em equipe, responsabilidade social e
                                respeito ao meio ambiente.
                            </p>
                        </ContentText>
                    </Wrapper>


                    <ContentPlanet>
                        <Planet />
                    </ContentPlanet>


                    <LottieScroll>
                        <Lottie
                            animationData={ScrollAnimate}
                            style={style}
                        />
                    </LottieScroll>
                </Container>
            </ScrollContainer>
        </>
    );
}

export default Home;