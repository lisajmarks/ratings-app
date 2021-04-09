--
-- PostgreSQL database dump
--

-- Dumped from database version 10.15 (Ubuntu 10.15-1.pgdg18.04+1)
-- Dumped by pg_dump version 10.15 (Ubuntu 10.15-1.pgdg18.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: movies; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.movies (
    movie_id integer NOT NULL,
    title character varying,
    overview text,
    release_date timestamp without time zone,
    poster_path character varying
);


ALTER TABLE public.movies OWNER TO vagrant;

--
-- Name: movies_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE public.movies_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_movie_id_seq OWNER TO vagrant;

--
-- Name: movies_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE public.movies_movie_id_seq OWNED BY public.movies.movie_id;


--
-- Name: ratings; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.ratings (
    rating_id integer NOT NULL,
    score integer,
    movie_id integer,
    user_id integer
);


ALTER TABLE public.ratings OWNER TO vagrant;

--
-- Name: ratings_rating_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE public.ratings_rating_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ratings_rating_id_seq OWNER TO vagrant;

--
-- Name: ratings_rating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE public.ratings_rating_id_seq OWNED BY public.ratings.rating_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: vagrant
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    email character varying,
    password character varying
);


ALTER TABLE public.users OWNER TO vagrant;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO vagrant;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: movies movie_id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.movies ALTER COLUMN movie_id SET DEFAULT nextval('public.movies_movie_id_seq'::regclass);


--
-- Name: ratings rating_id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.ratings ALTER COLUMN rating_id SET DEFAULT nextval('public.ratings_rating_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.movies (movie_id, title, overview, release_date, poster_path) FROM stdin;
1	Ad Astra	The near future, a time when both hope and hardships drive humanity to look to the stars and beyond. While a mysterious phenomenon menaces to destroy life on planet Earth, astronaut Roy McBride undertakes a mission across the immensity of space and its many perils to uncover the truth about a lost expedition that decades before boldly faced emptiness and silence in search of the unknown.	2019-09-20 00:00:00	https://image.tmdb.org/t/p/original//xBHvZcjRiWyobQ9kxBhO6B2dtRI.jpg
2	Bloodshot	After he and his wife are murdered, marine Ray Garrison is resurrected by a team of scientists. Enhanced with nanotechnology, he becomes a superhuman, biotech killing machine—'Bloodshot'. As Ray first trains with fellow super-soldiers, he cannot recall anything from his former life. But when his memories flood back and he remembers the man that killed both him and his wife, he breaks out of the facility to get revenge, only to discover that there's more to the conspiracy than he thought.	2020-03-13 00:00:00	https://image.tmdb.org/t/p/original//8WUVHemHFH2ZIP6NWkwlHWsyrEL.jpg
3	Scoob!	In Scooby-Doo’s greatest adventure yet, see the never-before told story of how lifelong friends Scooby and Shaggy first met and how they joined forces with young detectives Fred, Velma, and Daphne to form the famous Mystery Inc. Now, with hundreds of cases solved, Scooby and the gang face their biggest, toughest mystery ever: an evil plot to unleash the ghost dog Cerberus upon the world. As they race to stop this global “dogpocalypse,” the gang discovers that Scooby has a secret legacy and an epic destiny greater than anyone ever imagined.	2020-05-15 00:00:00	https://image.tmdb.org/t/p/original//jHo2M1OiH9Re33jYtUQdfzPeUkx.jpg
4	Survive the Night	A disgraced doctor and his family are held hostage at their home by criminals on the run, when a robbery-gone-awry requires them to seek immediate medical attention.	2020-05-22 00:00:00	https://image.tmdb.org/t/p/original//niyXFhGIk4W2WTcX2Eod8vx2Mfe.jpg
5	The Lovebirds	A couple experiences a defining moment in their relationship when they are unintentionally embroiled in a murder mystery. As their journey to clear their names takes them from one extreme – and hilarious - circumstance to the next, they must figure out how they, and their relationship, can survive the night.	2020-05-22 00:00:00	https://image.tmdb.org/t/p/original//5jdLnvALCpK1NkeQU1z4YvOe2dZ.jpg
6	1917	At the height of the First World War, two young British soldiers must cross enemy territory and deliver a message that will stop a deadly attack on hundreds of soldiers.	2019-12-25 00:00:00	https://image.tmdb.org/t/p/original//iZf0KyrE25z1sage4SYFLCCrMi9.jpg
7	Sonic the Hedgehog	Based on the global blockbuster videogame franchise from Sega, Sonic the Hedgehog tells the story of the world’s speediest hedgehog as he embraces his new home on Earth. In this live-action adventure comedy, Sonic and his new best friend team up to defend the planet from the evil genius Dr. Robotnik and his plans for world domination.	2020-02-14 00:00:00	https://image.tmdb.org/t/p/original//aQvJ5WPzZgYVDrxLX4R6cLJCEaQ.jpg
8	Joker	During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.	2019-10-04 00:00:00	https://image.tmdb.org/t/p/original//udDclJoHjfjb8Ekgsd4FDteOkCU.jpg
9	Birds of Prey (and the Fantabulous Emancipation of One Harley Quinn)	Harley Quinn joins forces with a singer, an assassin and a police detective to help a young girl who had a hit placed on her after she stole a rare diamond from a crime lord.	2020-02-07 00:00:00	https://image.tmdb.org/t/p/original//h4VB6m0RwcicVEZvzftYZyKXs6K.jpg
10	Bad Boys for Life	Marcus and Mike are forced to confront new threats, career changes, and midlife crises as they join the newly created elite team AMMO of the Miami police department to take down the ruthless Armando Armas, the vicious leader of a Miami drug cartel.	2020-01-17 00:00:00	https://image.tmdb.org/t/p/original//y95lQLnuNKdPAzw9F9Ab8kJ80c3.jpg
11	Cars	Lightning McQueen, a hotshot rookie race car driven to succeed, discovers that life is about the journey, not the finish line, when he finds himself unexpectedly detoured in the sleepy Route 66 town of Radiator Springs. On route across the country to the big Piston Cup Championship in California to compete against two seasoned pros, McQueen gets to know the town's offbeat characters.	2006-06-09 00:00:00	https://image.tmdb.org/t/p/original//qa6HCwP4Z15l3hpsASz3auugEW6.jpg
12	기생충	All unemployed, Ki-taek's family takes peculiar interest in the wealthy and glamorous Parks for their livelihood until they get entangled in an unexpected incident.	2019-10-11 00:00:00	https://image.tmdb.org/t/p/original//7IiTTgloJzvGI1TAYymCfbfl3vT.jpg
13	Extraction	Tyler Rake, a fearless mercenary who offers his services on the black market, embarks on a dangerous mission when he is hired to rescue the kidnapped son of a Mumbai crime lord…	2020-04-24 00:00:00	https://image.tmdb.org/t/p/original//wlfDxbGEsW58vGhFljKkcR5IxDj.jpg
14	Frozen II	Elsa, Anna, Kristoff and Olaf head far into the forest to learn the truth about an ancient mystery of their kingdom.	2019-11-22 00:00:00	https://image.tmdb.org/t/p/original//pjeMs3yqRmFL3giJy4PMXWZTTPa.jpg
15	Justice League Dark: Apokolips War	Earth is decimated after intergalactic tyrant Darkseid has devastated the Justice League in a poorly executed war by the DC Super Heroes. Now the remaining bastions of good – the Justice League, Teen Titans, Suicide Squad and assorted others – must regroup, strategize and take the war to Darkseid in order to save the planet and its surviving inhabitants.	2020-05-05 00:00:00	https://image.tmdb.org/t/p/original//c01Y4suApJ1Wic2xLmaq1QYcfoZ.jpg
16	Star Wars: The Rise of Skywalker	The surviving Resistance faces the First Order once again as the journey of Rey, Finn and Poe Dameron continues. With the power and knowledge of generations behind them, the final battle begins.	2019-12-20 00:00:00	https://image.tmdb.org/t/p/original//db32LaOibwEliAmSL2jjDF6oDdj.jpg
17	Onward	In a suburban fantasy world, two teenage elf brothers embark on an extraordinary quest to discover if there is still a little magic left out there.	2020-02-29 00:00:00	https://image.tmdb.org/t/p/original//f4aul3FyD3jv3v4bul1IrkWZvzq.jpg
18	The Wrong Missy	A guy meets the woman of his dreams and invites her to his company's corporate retreat, but realizes he sent the invite to the wrong person.	2020-05-13 00:00:00	https://image.tmdb.org/t/p/original//A2YlIrzypvhS3vTFMcDkG3xLvac.jpg
19	Inception	Cobb, a skilled thief who commits corporate espionage by infiltrating the subconscious of his targets is offered a chance to regain his old life as payment for a task considered to be impossible: "inception", the implantation of another person's idea into a target's subconscious.	2010-07-16 00:00:00	https://image.tmdb.org/t/p/original//9gk7adHYeDvHkCSEqAvQNLV5Uge.jpg
20	Aladdin	A kindhearted street urchin named Aladdin embarks on a magical adventure after finding a lamp that releases a wisecracking genie while a power-hungry Grand Vizier vies for the same lamp that has the power to make their deepest wishes come true.	2019-05-24 00:00:00	https://image.tmdb.org/t/p/original//3iYQTLGoy7QnjcUYRJy4YrAgGvp.jpg
21	Underwater	After an earthquake destroys their underwater station, six researchers must navigate two miles along the dangerous, unknown depths of the ocean floor to make it to safety in a race against time.	2020-01-10 00:00:00	https://image.tmdb.org/t/p/original//gzlbb3yeVISpQ3REd3Ga1scWGTU.jpg
22	Harry Potter and the Philosopher's Stone	Harry Potter has lived under the stairs at his aunt and uncle's house his whole life. But on his 11th birthday, he learns he's a powerful wizard -- with a place waiting for him at the Hogwarts School of Witchcraft and Wizardry. As he learns to harness his newfound powers with the help of the school's kindly headmaster, Harry uncovers the truth about his parents' deaths -- and about the villain who's to blame.	2001-11-16 00:00:00	https://image.tmdb.org/t/p/original//wuMc08IPKEatf9rnMNXvIDxqP4W.jpg
23	Star Wars	Princess Leia is captured and held hostage by the evil Imperial forces in their effort to take over the galactic Empire. Venturesome Luke Skywalker and dashing captain Han Solo team together with the loveable robot duo R2-D2 and C-3PO to rescue the beautiful princess and restore peace and justice in the Empire.	1977-05-25 00:00:00	https://image.tmdb.org/t/p/original//6FfCtAuVAW8XJjZ7eWeLibRLWTw.jpg
24	Interstellar	Interstellar chronicles the adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.	2014-11-05 00:00:00	https://image.tmdb.org/t/p/original//gEU2QniE6E77NI6lCU6MxlNBvIx.jpg
25	The Invisible Man	When Cecilia's abusive ex takes his own life and leaves her his fortune, she suspects his death was a hoax. As a series of coincidences turn lethal, Cecilia works to prove that she is being hunted by someone nobody can see.	2020-02-28 00:00:00	https://image.tmdb.org/t/p/original//5EufsDwXdY2CVttYOk2WtYhgKpa.jpg
26	Justice League	Fuelled by his restored faith in humanity and inspired by Superman's selfless act, Bruce Wayne and Diana Prince assemble a team of metahumans consisting of Barry Allen, Arthur Curry and Victor Stone to face the catastrophic threat of Steppenwolf and the Parademons who are on the hunt for three Mother Boxes on Earth.	2017-11-17 00:00:00	https://image.tmdb.org/t/p/original//eifGNCSDuxJeS1loAXil5bIGgvC.jpg
27	Knives Out	When renowned crime novelist Harlan Thrombey is found dead at his estate just after his 85th birthday, the inquisitive and debonair Detective Benoit Blanc is mysteriously enlisted to investigate. From Harlan's dysfunctional family to his devoted staff, Blanc sifts through a web of red herrings and self-serving lies to uncover the truth behind Harlan's untimely death.	2019-11-27 00:00:00	https://image.tmdb.org/t/p/original//pThyQovXQrw2m0s9x82twj48Jq4.jpg
28	Avengers: Infinity War	As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows: Thanos. A despot of intergalactic infamy, his goal is to collect all six Infinity Stones, artifacts of unimaginable power, and use them to inflict his twisted will on all of reality. Everything the Avengers have fought for has led up to this moment - the fate of Earth and existence itself has never been more uncertain.	2018-04-27 00:00:00	https://image.tmdb.org/t/p/original//7WsyChQLEftFiDOVTGkv3hFpyyt.jpg
29	The Lion King	Simba idolizes his father, King Mufasa, and takes to heart his own royal destiny. But not everyone in the kingdom celebrates the new cub's arrival. Scar, Mufasa's brother—and former heir to the throne—has plans of his own. The battle for Pride Rock is ravaged with betrayal, tragedy and drama, ultimately resulting in Simba's exile. With help from a curious pair of newfound friends, Simba will have to figure out how to grow up and take back what is rightfully his.	2019-07-19 00:00:00	https://image.tmdb.org/t/p/original//2bXbqYdUdNVa8VIWXVfclP2ICtT.jpg
30	Jojo Rabbit	A World War II satire that follows a lonely German boy whose world view is turned upside down when he discovers his single mother is hiding a young Jewish girl in their attic. Aided only by his idiotic imaginary friend, Adolf Hitler, Jojo must confront his blind nationalism.	2019-10-18 00:00:00	https://image.tmdb.org/t/p/original//7GsM4mtM0worCtIVeiQt28HieeN.jpg
31	Spider-Man: Far from Home	Peter Parker and his friends go on a summer trip to Europe. However, they will hardly be able to rest - Peter will have to agree to help Nick Fury uncover the mystery of creatures that cause natural disasters and destruction throughout the continent.	2019-07-02 00:00:00	https://image.tmdb.org/t/p/original//4q2NNj4S5dG2RLF9CpXsej7yXl.jpg
32	The Avengers	When an unexpected enemy emerges and threatens global safety and security, Nick Fury, director of the international peacekeeping agency known as S.H.I.E.L.D., finds himself in need of a team to pull the world back from the brink of disaster. Spanning the globe, a daring recruitment effort begins!	2012-05-04 00:00:00	https://image.tmdb.org/t/p/original//RYMX2wcKCBAr24UyPD7xwmjaTn.jpg
33	Jumanji: The Next Level	As the gang return to Jumanji to rescue one of their own, they discover that nothing is as they expect. The players will have to brave parts unknown and unexplored in order to escape the world’s most dangerous game.	2019-12-13 00:00:00	https://image.tmdb.org/t/p/original//jyw8VKYEiM1UDzPB7NsisUgBeJ8.jpg
34	Dolittle	After losing his wife seven years earlier, the eccentric Dr. John Dolittle, famed doctor and veterinarian of Queen Victoria’s England, hermits himself away behind the high walls of Dolittle Manor with only his menagerie of exotic animals for company. But when the young queen falls gravely ill, a reluctant Dolittle is forced to set sail on an epic adventure to a mythical island in search of a cure, regaining his wit and courage as he crosses old adversaries and discovers wondrous creatures.	2020-01-17 00:00:00	https://image.tmdb.org/t/p/original//xnjvwfDulnOCy8qtYX0iqydmMhk.jpg
35	Once Upon a Time… in Hollywood	Los Angeles, 1969. TV star Rick Dalton, a struggling actor specializing in westerns, and stuntman Cliff Booth, his best friend, try to survive in a constantly changing movie industry. Dalton is the neighbor of the young and promising actress and model Sharon Tate, who has just married the prestigious Polish director Roman Polanski…	2019-07-26 00:00:00	https://image.tmdb.org/t/p/original//8j58iEBw9pOXFD2L0nt0ZXeHviB.jpg
36	Capone	The 47-year old Al Capone, after 10 years in prison, starts suffering from dementia and comes to be haunted by his violent past.	2020-05-12 00:00:00	https://image.tmdb.org/t/p/original//75gDv38UgRtAukSxNXcjatyQmEa.jpg
37	The Hunger Games: Mockingjay - Part 1	Katniss Everdeen reluctantly becomes the symbol of a mass rebellion against the autocratic Capitol.	2014-11-21 00:00:00	https://image.tmdb.org/t/p/original//4FAA18ZIja70d1Tu5hr5cj2q1sB.jpg
38	The Hobbit: The Battle of the Five Armies	Immediately after the events of The Desolation of Smaug, Bilbo and the dwarves try to defend Erebor's mountain of treasure from others who claim it: the men of the ruined Laketown and the elves of Mirkwood. Meanwhile an army of Orcs led by Azog the Defiler is marching on Erebor, fueled by the rise of the dark lord Sauron. Dwarves, elves and men must unite, and the hope for Middle-Earth falls into Bilbo's hands.	2014-12-17 00:00:00	https://image.tmdb.org/t/p/original//xT98tLqatZPQApyRmlPL12LtiWp.jpg
39	El hoyo	A mysterious place, an indescribable prison, a deep hole. An unknown number of levels. Two inmates living on each level. A descending platform containing food for all of them. An inhuman fight for survival, but also an opportunity for solidarity…	2019-09-22 00:00:00	https://image.tmdb.org/t/p/original//8ZX18L5m6rH5viSYpRnTSbb9eXh.jpg
40	Snowpiercer	In a future where a failed global-warming experiment kills off most life on the planet, a class system evolves aboard the Snowpiercer, a train that travels around the globe via a perpetual-motion engine.	2014-06-27 00:00:00	https://image.tmdb.org/t/p/original//9JPx09Rr0Txq2eSQfjq1DEBR5cx.jpg
41	The Dark Knight	Batman raises the stakes in his war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as the Joker.	2008-07-18 00:00:00	https://image.tmdb.org/t/p/original//qJ2tW6WMUDux911r6m7haRef0WH.jpg
42	Blade Runner 2049	Thirty years after the events of the first film, a new blade runner, LAPD Officer K, unearths a long-buried secret that has the potential to plunge what's left of society into chaos. K's discovery leads him on a quest to find Rick Deckard, a former LAPD blade runner who has been missing for 30 years.	2017-10-06 00:00:00	https://image.tmdb.org/t/p/original//gajva2L0rPYkEWjzgFlBXCAVBE5.jpg
43	The Gentlemen	American expat Mickey Pearson has built a highly profitable marijuana empire in London. When word gets out that he’s looking to cash out of the business forever it triggers plots, schemes, bribery and blackmail in an attempt to steal his domain out from under him.	2020-01-24 00:00:00	https://image.tmdb.org/t/p/original//jtrhTYB7xSrJxR1vusu99nvnZ1g.jpg
44	The Call of the Wild	Buck is a big-hearted dog whose blissful domestic life is turned upside down when he is suddenly uprooted from his California home and transplanted to the exotic wilds of the Yukon during the Gold Rush of the 1890s. As the newest rookie on a mail delivery dog sled team—and later its leader—Buck experiences the adventure of a lifetime, ultimately finding his true place in the world and becoming his own master.	2020-02-21 00:00:00	https://image.tmdb.org/t/p/original//33VdppGbeNxICrFUtW2WpGHvfYc.jpg
45	Iron Man	After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.	2008-05-02 00:00:00	https://image.tmdb.org/t/p/original//78lPtwv72eTNqFW9COBYI0dWDJa.jpg
46	Harry Potter and the Chamber of Secrets	Cars fly, trees fight back, and a mysterious house-elf comes to warn Harry Potter at the start of his second year at Hogwarts. Adventure and danger await when bloody writing on a wall announces: The Chamber Of Secrets Has Been Opened. To save Hogwarts will require all of Harry, Ron and Hermione’s magical abilities and courage.	2002-11-15 00:00:00	https://image.tmdb.org/t/p/original//sdEOH0992YZ0QSxgXNIGLq1ToUi.jpg
47	Jocks	The coach of a college tennis team is given an ultimatum: put together a winning team, or else.	1986-11-14 00:00:00	https://image.tmdb.org/t/p/original//tgjpxqrugdbnADyKGvo65kySaBL.jpg
48	Spider-Man: Homecoming	Following the events of Captain America: Civil War, Peter Parker, with the help of his mentor Tony Stark, tries to balance his life as an ordinary high school student in Queens, New York City, with fighting crime as his superhero alter ego Spider-Man as a new threat, the Vulture, emerges.	2017-07-07 00:00:00	https://image.tmdb.org/t/p/original//c24sv2weTHPsmDa7jEMN0m2P3RT.jpg
49	Star Wars: The Last Jedi	Rey develops her newly discovered abilities with the guidance of Luke Skywalker, who is unsettled by the strength of her powers. Meanwhile, the Resistance prepares to do battle with the First Order.	2017-12-15 00:00:00	https://image.tmdb.org/t/p/original//kOVEVeg59E0wsnXmF9nrh6OmWII.jpg
50	The Lodge	When a father is forced to abruptly depart for work, he leaves his children, Aidan and Mia, at their holiday home in the care of his new girlfriend, Grace. Isolated and alone, a blizzard traps them inside the lodge as terrifying events summon specters from Grace's dark past.	2019-01-25 00:00:00	https://image.tmdb.org/t/p/original//yake2myhbW7c6dKbmwYDy1i40bm.jpg
51	Wonder Woman	An Amazon princess comes to the world of Man in the grips of the First World War to confront the forces of evil and bring an end to human conflict.	2017-06-02 00:00:00	https://image.tmdb.org/t/p/original//gfJGlDaHuWimErCr5Ql0I8x9QSy.jpg
52	Top Gun	For Lieutenant Pete 'Maverick' Mitchell and his friend and co-pilot Nick 'Goose' Bradshaw, being accepted into an elite training school for fighter pilots is a dream come true. But a tragedy, as well as personal demons, will threaten Pete's dreams of becoming an ace pilot.	1986-05-16 00:00:00	https://image.tmdb.org/t/p/original//xUuHj3CgmZQ9P2cMaqQs4J0d4Zc.jpg
53	Gladiator	In the year 180, the death of emperor Marcus Aurelius throws the Roman Empire into chaos.  Maximus is one of the Roman army's most capable and trusted generals and a key advisor to the emperor.  As Marcus' devious son Commodus ascends to the throne, Maximus is set to be executed.  He escapes, but is captured by slave traders.  Renamed Spaniard and forced to become a gladiator, Maximus must battle to the death with other men for the amusement of paying audiences.	2000-05-01 00:00:00	https://image.tmdb.org/t/p/original//dvKsQB84W2Sv6s7jpGmzQBVyQe3.jpg
54	The Lord of the Rings: The Fellowship of the Ring	Young hobbit Frodo Baggins, after inheriting a mysterious ring from his uncle Bilbo, must leave his home in order to keep it from falling into the hands of its evil creator. Along the way, a fellowship is formed to protect the ringbearer and make sure that the ring arrives at its final destination: Mt. Doom, the only place where it can be destroyed.	2001-12-19 00:00:00	https://image.tmdb.org/t/p/original//6oom5QYQ2yQTMJIbnvbkBL9cHo6.jpg
55	Inheritance	A patriarch of a wealthy and powerful family suddenly passes away, leaving his wife and daughter with a shocking secret inheritance that threatens to unravel and destroy their lives.	2020-05-15 00:00:00	https://image.tmdb.org/t/p/original//l13mt3oHErSkkqJbN1bjzgtK0Vq.jpg
56	千と千尋の神隠し	A young girl, Chihiro, becomes trapped in a strange new world of spirits. When her parents undergo a mysterious transformation, she must call upon the courage she never knew she had to free her family.	2002-09-20 00:00:00	https://image.tmdb.org/t/p/original//8Q2kDDyswBB8SPUJWfNlqvxdDFX.jpg
57	The Shawshank Redemption	Framed in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.	1994-09-23 00:00:00	https://image.tmdb.org/t/p/original//5KCVkau1HEl7ZzfPsKAPM0sMiKc.jpg
58	Doctor Strange	After his career is destroyed, a brilliant but arrogant surgeon gets a new lease on life when a sorcerer takes him under her wing and trains him to defend the world against evil.	2016-11-04 00:00:00	https://image.tmdb.org/t/p/original//gwi5kL7HEWAOTffiA14e4SbOGra.jpg
59	Fast & Furious Presents: Hobbs & Shaw	Ever since US Diplomatic Security Service Agent Hobbs and lawless outcast Shaw first faced off, they just have swapped smacks and bad words. But when cyber-genetically enhanced anarchist Brixton's ruthless actions threaten the future of humanity, both join forces to defeat him. (A spin-off of “The Fate of the Furious,” focusing on Johnson's Luke Hobbs and Statham's Deckard Shaw.)	2019-08-02 00:00:00	https://image.tmdb.org/t/p/original//qRyy2UmjC5ur9bDi3kpNNRCc5nc.jpg
60	Don't Let Go	A detective suffering from a personal loss receives a call from his recently deceased niece. Being able to communicate across time, the two work together to try and stop the crime before it occurs.	2019-08-30 00:00:00	https://image.tmdb.org/t/p/original//uNHueGo5TYCTLzoGULse65GC32Q.jpg
61	The Matrix	Set in the 22nd century, The Matrix tells the story of a computer hacker who joins a group of underground insurgents fighting the vast and powerful computers who now rule the earth.	1999-03-30 00:00:00	https://image.tmdb.org/t/p/original//f89U3ADr1oiB1s9GkdPOEpXUk5H.jpg
62	Terminator Genisys	The year is 2029. John Connor, leader of the resistance continues the war against the machines. At the Los Angeles offensive, John's fears of the unknown future begin to emerge when TECOM spies reveal a new plot by SkyNet that will attack him from both fronts; past and future, and will ultimately change warfare forever.	2015-07-01 00:00:00	https://image.tmdb.org/t/p/original//oZRVDpNtmHk8M1VYy1aeOWUXgbC.jpg
63	Frozen	Young princess Anna of Arendelle dreams about finding true love at her sister Elsa’s coronation. Fate takes her on a dangerous journey in an attempt to end the eternal winter that has fallen over the kingdom. She's accompanied by ice delivery man Kristoff, his reindeer Sven, and snowman Olaf. On an adventure where she will find out what friendship, courage, family, and true love really means.	2013-11-27 00:00:00	https://image.tmdb.org/t/p/original//yald8Lsb4uCRvjIH3spzR84Kdwf.jpg
64	Captain America: Civil War	Following the events of Age of Ultron, the collective governments of the world pass an act designed to regulate all superhuman activity. This polarizes opinion amongst the Avengers, causing two factions to side with Iron Man or Captain America, which causes an epic battle between former allies.	2016-05-06 00:00:00	https://image.tmdb.org/t/p/original//A6BCtWOv5R1X6DmklAuSM6OxnL9.jpg
65	Fury	In the last months of World War II, as the Allies make their final push in the European theatre, a battle-hardened U.S. Army sergeant named 'Wardaddy' commands a Sherman tank called 'Fury' and its five-man crew on a deadly mission behind enemy lines. Outnumbered and outgunned, Wardaddy and his men face overwhelming odds in their heroic attempts to strike at the heart of Nazi Germany.	2014-10-17 00:00:00	https://image.tmdb.org/t/p/original//pfte7wdMobMF4CVHuOxyu6oqeeA.jpg
66	Thor: Ragnarok	Thor is imprisoned on the other side of the universe and finds himself in a race against time to get back to Asgard to stop Ragnarok, the destruction of his home-world and the end of Asgardian civilization, at the hands of an all-powerful new threat, the ruthless Hela.	2017-11-03 00:00:00	https://image.tmdb.org/t/p/original//rzRwTcFvttcN1ZpX2xv4j3tSdJu.jpg
67	The Shining	Jack Torrance accepts a caretaker job at the Overlook Hotel, where he, along with his wife Wendy and their son Danny, must live isolated from the rest of the world for the winter. But they aren't prepared for the madness that lurks within.	1980-05-23 00:00:00	https://image.tmdb.org/t/p/original//b6ko0IKC8MdYBBPkkA1aBPLe2yz.jpg
68	War of the Worlds	Ray Ferrier is a divorced dockworker and less-than-perfect father. Soon after his ex-wife and her new husband drop off his teenage son and young daughter for a rare weekend visit, a strange and powerful lightning storm touches down.	2005-06-29 00:00:00	https://image.tmdb.org/t/p/original//6Biy7R9LfumYshur3YKhpj56MpB.jpg
69	Harry Potter and the Deathly Hallows: Part 2	Harry, Ron and Hermione continue their quest to vanquish the evil Voldemort once and for all. Just as things begin to look hopeless for the young wizards, Harry discovers a trio of magical objects that endow him with powers to rival Voldemort's formidable skills.	2011-07-15 00:00:00	https://image.tmdb.org/t/p/original//c54HpQmuwXjHq2C9wmoACjxoom3.jpg
70	Dracula Untold	Vlad Tepes is a great hero, but when he learns the Sultan is preparing for battle and needs to form an army of 1,000 boys, he vows to find a way to protect his family. Vlad turns to dark forces in order to get the power to destroy his enemies and agrees to go from hero to monster as he's turned into the mythological vampire, Dracula.	2014-10-03 00:00:00	https://image.tmdb.org/t/p/original//m5h3NtZ2ZfryIHl1MvatmANvIqQ.jpg
71	Avengers: Endgame	After the devastating events of Avengers: Infinity War, the universe is in ruins due to the efforts of the Mad Titan, Thanos. With the help of remaining allies, the Avengers must assemble once more in order to undo Thanos' actions and restore order to the universe once and for all, no matter what consequences may be in store.	2019-04-26 00:00:00	https://image.tmdb.org/t/p/original//or06FN3Dka5tukK1e9sl16pB3iy.jpg
72	Dark Waters	A tenacious attorney uncovers a dark secret that connects a growing number of unexplained deaths to one of the world's largest corporations. In the process, he risks everything — his future, his family, and his own life — to expose the truth.	2019-11-22 00:00:00	https://image.tmdb.org/t/p/original//hJ6YEbrjFvToa5c7IiUqILoB6Je.jpg
73	Captain Marvel	The story follows Carol Danvers as she becomes one of the universe’s most powerful heroes when Earth is caught in the middle of a galactic war between two alien races. Set in the 1990s, Captain Marvel is an all-new adventure from a previously unseen period in the history of the Marvel Cinematic Universe.	2019-03-08 00:00:00	https://image.tmdb.org/t/p/original//AtsgWhDnHTq68L0lLsUrCnM7TjG.jpg
74	Trolls World Tour	Queen Poppy and Branch make a surprising discovery — there are other Troll worlds beyond their own, and their distinct differences create big clashes between these various tribes. When a mysterious threat puts all of the Trolls across the land in danger, Poppy, Branch, and their band of friends must embark on an epic quest to create harmony among the feuding Trolls to unite them against certain doom.	2020-04-10 00:00:00	https://image.tmdb.org/t/p/original//7W0G3YECgDAfnuiHG91r8WqgIOe.jpg
75	君の名は。	High schoolers Mitsuha and Taki are complete strangers living separate lives. But one night, they suddenly switch places. Mitsuha wakes up in Taki’s body, and he in hers. This bizarre occurrence continues to happen randomly, and the two must adjust their lives around each other.	2017-04-07 00:00:00	https://image.tmdb.org/t/p/original//q719jXXEzOoYaps6babgKnONONX.jpg
76	The Hunt	Twelve strangers wake up in a clearing. They don't know where they are—or how they got there. In the shadow of a dark internet conspiracy theory, ruthless elitists gather at a remote location to hunt humans for sport. But their master plan is about to be derailed when one of the hunted turns the tables on her pursuers.	2020-03-13 00:00:00	https://image.tmdb.org/t/p/original//wxPhn4ef1EAo5njxwBkAEVrlJJG.jpg
77	The Lord of the Rings: The Return of the King	Aragorn is revealed as the heir to the ancient kings as he, Gandalf and the other members of the broken fellowship struggle to save Gondor from Sauron's forces. Meanwhile, Frodo and Sam take the ring closer to the heart of Mordor, the dark lord's realm.	2003-12-17 00:00:00	https://image.tmdb.org/t/p/original//rCzpDGLbOoPwLjy3OAm5NUPOTrC.jpg
78	Ford v Ferrari	American car designer Carroll Shelby and the British-born driver Ken Miles work together to battle corporate interference, the laws of physics, and their own personal demons to build a revolutionary race car for Ford Motor Company and take on the dominating race cars of Enzo Ferrari at the 24 Hours of Le Mans in France in 1966.	2019-11-15 00:00:00	https://image.tmdb.org/t/p/original//6ApDtO7xaWAfPqfi2IARXIzj8QS.jpg
79	Harry Potter and the Half-Blood Prince	As Harry begins his sixth year at Hogwarts, he discovers an old book marked as 'Property of the Half-Blood Prince', and begins to learn more about Lord Voldemort's dark past.	2009-07-08 00:00:00	https://image.tmdb.org/t/p/original//Ag21otqbeynZPGjEbzyr3X5Us0j.jpg
80	Love Wedding Repeat	While trying to make his sister's wedding day go smoothly, Jack finds himself juggling an angry ex-girlfriend, an uninvited guest with a secret, a misplaced sleep sedative, and the girl that got away in alternate versions of the same day.	2020-04-10 00:00:00	https://image.tmdb.org/t/p/original//zn7feouGPU8sELez4qvpp0EtgeQ.jpg
81	Ad Astra	The near future, a time when both hope and hardships drive humanity to look to the stars and beyond. While a mysterious phenomenon menaces to destroy life on planet Earth, astronaut Roy McBride undertakes a mission across the immensity of space and its many perils to uncover the truth about a lost expedition that decades before boldly faced emptiness and silence in search of the unknown.	2019-09-20 00:00:00	https://image.tmdb.org/t/p/original//xBHvZcjRiWyobQ9kxBhO6B2dtRI.jpg
82	Bloodshot	After he and his wife are murdered, marine Ray Garrison is resurrected by a team of scientists. Enhanced with nanotechnology, he becomes a superhuman, biotech killing machine—'Bloodshot'. As Ray first trains with fellow super-soldiers, he cannot recall anything from his former life. But when his memories flood back and he remembers the man that killed both him and his wife, he breaks out of the facility to get revenge, only to discover that there's more to the conspiracy than he thought.	2020-03-13 00:00:00	https://image.tmdb.org/t/p/original//8WUVHemHFH2ZIP6NWkwlHWsyrEL.jpg
83	Scoob!	In Scooby-Doo’s greatest adventure yet, see the never-before told story of how lifelong friends Scooby and Shaggy first met and how they joined forces with young detectives Fred, Velma, and Daphne to form the famous Mystery Inc. Now, with hundreds of cases solved, Scooby and the gang face their biggest, toughest mystery ever: an evil plot to unleash the ghost dog Cerberus upon the world. As they race to stop this global “dogpocalypse,” the gang discovers that Scooby has a secret legacy and an epic destiny greater than anyone ever imagined.	2020-05-15 00:00:00	https://image.tmdb.org/t/p/original//jHo2M1OiH9Re33jYtUQdfzPeUkx.jpg
84	Survive the Night	A disgraced doctor and his family are held hostage at their home by criminals on the run, when a robbery-gone-awry requires them to seek immediate medical attention.	2020-05-22 00:00:00	https://image.tmdb.org/t/p/original//niyXFhGIk4W2WTcX2Eod8vx2Mfe.jpg
85	The Lovebirds	A couple experiences a defining moment in their relationship when they are unintentionally embroiled in a murder mystery. As their journey to clear their names takes them from one extreme – and hilarious - circumstance to the next, they must figure out how they, and their relationship, can survive the night.	2020-05-22 00:00:00	https://image.tmdb.org/t/p/original//5jdLnvALCpK1NkeQU1z4YvOe2dZ.jpg
86	1917	At the height of the First World War, two young British soldiers must cross enemy territory and deliver a message that will stop a deadly attack on hundreds of soldiers.	2019-12-25 00:00:00	https://image.tmdb.org/t/p/original//iZf0KyrE25z1sage4SYFLCCrMi9.jpg
87	Sonic the Hedgehog	Based on the global blockbuster videogame franchise from Sega, Sonic the Hedgehog tells the story of the world’s speediest hedgehog as he embraces his new home on Earth. In this live-action adventure comedy, Sonic and his new best friend team up to defend the planet from the evil genius Dr. Robotnik and his plans for world domination.	2020-02-14 00:00:00	https://image.tmdb.org/t/p/original//aQvJ5WPzZgYVDrxLX4R6cLJCEaQ.jpg
88	Joker	During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.	2019-10-04 00:00:00	https://image.tmdb.org/t/p/original//udDclJoHjfjb8Ekgsd4FDteOkCU.jpg
89	Birds of Prey (and the Fantabulous Emancipation of One Harley Quinn)	Harley Quinn joins forces with a singer, an assassin and a police detective to help a young girl who had a hit placed on her after she stole a rare diamond from a crime lord.	2020-02-07 00:00:00	https://image.tmdb.org/t/p/original//h4VB6m0RwcicVEZvzftYZyKXs6K.jpg
90	Bad Boys for Life	Marcus and Mike are forced to confront new threats, career changes, and midlife crises as they join the newly created elite team AMMO of the Miami police department to take down the ruthless Armando Armas, the vicious leader of a Miami drug cartel.	2020-01-17 00:00:00	https://image.tmdb.org/t/p/original//y95lQLnuNKdPAzw9F9Ab8kJ80c3.jpg
91	Cars	Lightning McQueen, a hotshot rookie race car driven to succeed, discovers that life is about the journey, not the finish line, when he finds himself unexpectedly detoured in the sleepy Route 66 town of Radiator Springs. On route across the country to the big Piston Cup Championship in California to compete against two seasoned pros, McQueen gets to know the town's offbeat characters.	2006-06-09 00:00:00	https://image.tmdb.org/t/p/original//qa6HCwP4Z15l3hpsASz3auugEW6.jpg
92	기생충	All unemployed, Ki-taek's family takes peculiar interest in the wealthy and glamorous Parks for their livelihood until they get entangled in an unexpected incident.	2019-10-11 00:00:00	https://image.tmdb.org/t/p/original//7IiTTgloJzvGI1TAYymCfbfl3vT.jpg
93	Extraction	Tyler Rake, a fearless mercenary who offers his services on the black market, embarks on a dangerous mission when he is hired to rescue the kidnapped son of a Mumbai crime lord…	2020-04-24 00:00:00	https://image.tmdb.org/t/p/original//wlfDxbGEsW58vGhFljKkcR5IxDj.jpg
94	Frozen II	Elsa, Anna, Kristoff and Olaf head far into the forest to learn the truth about an ancient mystery of their kingdom.	2019-11-22 00:00:00	https://image.tmdb.org/t/p/original//pjeMs3yqRmFL3giJy4PMXWZTTPa.jpg
95	Justice League Dark: Apokolips War	Earth is decimated after intergalactic tyrant Darkseid has devastated the Justice League in a poorly executed war by the DC Super Heroes. Now the remaining bastions of good – the Justice League, Teen Titans, Suicide Squad and assorted others – must regroup, strategize and take the war to Darkseid in order to save the planet and its surviving inhabitants.	2020-05-05 00:00:00	https://image.tmdb.org/t/p/original//c01Y4suApJ1Wic2xLmaq1QYcfoZ.jpg
96	Star Wars: The Rise of Skywalker	The surviving Resistance faces the First Order once again as the journey of Rey, Finn and Poe Dameron continues. With the power and knowledge of generations behind them, the final battle begins.	2019-12-20 00:00:00	https://image.tmdb.org/t/p/original//db32LaOibwEliAmSL2jjDF6oDdj.jpg
97	Onward	In a suburban fantasy world, two teenage elf brothers embark on an extraordinary quest to discover if there is still a little magic left out there.	2020-02-29 00:00:00	https://image.tmdb.org/t/p/original//f4aul3FyD3jv3v4bul1IrkWZvzq.jpg
98	The Wrong Missy	A guy meets the woman of his dreams and invites her to his company's corporate retreat, but realizes he sent the invite to the wrong person.	2020-05-13 00:00:00	https://image.tmdb.org/t/p/original//A2YlIrzypvhS3vTFMcDkG3xLvac.jpg
99	Inception	Cobb, a skilled thief who commits corporate espionage by infiltrating the subconscious of his targets is offered a chance to regain his old life as payment for a task considered to be impossible: "inception", the implantation of another person's idea into a target's subconscious.	2010-07-16 00:00:00	https://image.tmdb.org/t/p/original//9gk7adHYeDvHkCSEqAvQNLV5Uge.jpg
100	Aladdin	A kindhearted street urchin named Aladdin embarks on a magical adventure after finding a lamp that releases a wisecracking genie while a power-hungry Grand Vizier vies for the same lamp that has the power to make their deepest wishes come true.	2019-05-24 00:00:00	https://image.tmdb.org/t/p/original//3iYQTLGoy7QnjcUYRJy4YrAgGvp.jpg
101	Underwater	After an earthquake destroys their underwater station, six researchers must navigate two miles along the dangerous, unknown depths of the ocean floor to make it to safety in a race against time.	2020-01-10 00:00:00	https://image.tmdb.org/t/p/original//gzlbb3yeVISpQ3REd3Ga1scWGTU.jpg
102	Harry Potter and the Philosopher's Stone	Harry Potter has lived under the stairs at his aunt and uncle's house his whole life. But on his 11th birthday, he learns he's a powerful wizard -- with a place waiting for him at the Hogwarts School of Witchcraft and Wizardry. As he learns to harness his newfound powers with the help of the school's kindly headmaster, Harry uncovers the truth about his parents' deaths -- and about the villain who's to blame.	2001-11-16 00:00:00	https://image.tmdb.org/t/p/original//wuMc08IPKEatf9rnMNXvIDxqP4W.jpg
103	Star Wars	Princess Leia is captured and held hostage by the evil Imperial forces in their effort to take over the galactic Empire. Venturesome Luke Skywalker and dashing captain Han Solo team together with the loveable robot duo R2-D2 and C-3PO to rescue the beautiful princess and restore peace and justice in the Empire.	1977-05-25 00:00:00	https://image.tmdb.org/t/p/original//6FfCtAuVAW8XJjZ7eWeLibRLWTw.jpg
104	Interstellar	Interstellar chronicles the adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.	2014-11-05 00:00:00	https://image.tmdb.org/t/p/original//gEU2QniE6E77NI6lCU6MxlNBvIx.jpg
105	The Invisible Man	When Cecilia's abusive ex takes his own life and leaves her his fortune, she suspects his death was a hoax. As a series of coincidences turn lethal, Cecilia works to prove that she is being hunted by someone nobody can see.	2020-02-28 00:00:00	https://image.tmdb.org/t/p/original//5EufsDwXdY2CVttYOk2WtYhgKpa.jpg
106	Justice League	Fuelled by his restored faith in humanity and inspired by Superman's selfless act, Bruce Wayne and Diana Prince assemble a team of metahumans consisting of Barry Allen, Arthur Curry and Victor Stone to face the catastrophic threat of Steppenwolf and the Parademons who are on the hunt for three Mother Boxes on Earth.	2017-11-17 00:00:00	https://image.tmdb.org/t/p/original//eifGNCSDuxJeS1loAXil5bIGgvC.jpg
107	Knives Out	When renowned crime novelist Harlan Thrombey is found dead at his estate just after his 85th birthday, the inquisitive and debonair Detective Benoit Blanc is mysteriously enlisted to investigate. From Harlan's dysfunctional family to his devoted staff, Blanc sifts through a web of red herrings and self-serving lies to uncover the truth behind Harlan's untimely death.	2019-11-27 00:00:00	https://image.tmdb.org/t/p/original//pThyQovXQrw2m0s9x82twj48Jq4.jpg
108	Avengers: Infinity War	As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows: Thanos. A despot of intergalactic infamy, his goal is to collect all six Infinity Stones, artifacts of unimaginable power, and use them to inflict his twisted will on all of reality. Everything the Avengers have fought for has led up to this moment - the fate of Earth and existence itself has never been more uncertain.	2018-04-27 00:00:00	https://image.tmdb.org/t/p/original//7WsyChQLEftFiDOVTGkv3hFpyyt.jpg
109	The Lion King	Simba idolizes his father, King Mufasa, and takes to heart his own royal destiny. But not everyone in the kingdom celebrates the new cub's arrival. Scar, Mufasa's brother—and former heir to the throne—has plans of his own. The battle for Pride Rock is ravaged with betrayal, tragedy and drama, ultimately resulting in Simba's exile. With help from a curious pair of newfound friends, Simba will have to figure out how to grow up and take back what is rightfully his.	2019-07-19 00:00:00	https://image.tmdb.org/t/p/original//2bXbqYdUdNVa8VIWXVfclP2ICtT.jpg
110	Jojo Rabbit	A World War II satire that follows a lonely German boy whose world view is turned upside down when he discovers his single mother is hiding a young Jewish girl in their attic. Aided only by his idiotic imaginary friend, Adolf Hitler, Jojo must confront his blind nationalism.	2019-10-18 00:00:00	https://image.tmdb.org/t/p/original//7GsM4mtM0worCtIVeiQt28HieeN.jpg
111	Spider-Man: Far from Home	Peter Parker and his friends go on a summer trip to Europe. However, they will hardly be able to rest - Peter will have to agree to help Nick Fury uncover the mystery of creatures that cause natural disasters and destruction throughout the continent.	2019-07-02 00:00:00	https://image.tmdb.org/t/p/original//4q2NNj4S5dG2RLF9CpXsej7yXl.jpg
112	The Avengers	When an unexpected enemy emerges and threatens global safety and security, Nick Fury, director of the international peacekeeping agency known as S.H.I.E.L.D., finds himself in need of a team to pull the world back from the brink of disaster. Spanning the globe, a daring recruitment effort begins!	2012-05-04 00:00:00	https://image.tmdb.org/t/p/original//RYMX2wcKCBAr24UyPD7xwmjaTn.jpg
113	Jumanji: The Next Level	As the gang return to Jumanji to rescue one of their own, they discover that nothing is as they expect. The players will have to brave parts unknown and unexplored in order to escape the world’s most dangerous game.	2019-12-13 00:00:00	https://image.tmdb.org/t/p/original//jyw8VKYEiM1UDzPB7NsisUgBeJ8.jpg
114	Dolittle	After losing his wife seven years earlier, the eccentric Dr. John Dolittle, famed doctor and veterinarian of Queen Victoria’s England, hermits himself away behind the high walls of Dolittle Manor with only his menagerie of exotic animals for company. But when the young queen falls gravely ill, a reluctant Dolittle is forced to set sail on an epic adventure to a mythical island in search of a cure, regaining his wit and courage as he crosses old adversaries and discovers wondrous creatures.	2020-01-17 00:00:00	https://image.tmdb.org/t/p/original//xnjvwfDulnOCy8qtYX0iqydmMhk.jpg
115	Once Upon a Time… in Hollywood	Los Angeles, 1969. TV star Rick Dalton, a struggling actor specializing in westerns, and stuntman Cliff Booth, his best friend, try to survive in a constantly changing movie industry. Dalton is the neighbor of the young and promising actress and model Sharon Tate, who has just married the prestigious Polish director Roman Polanski…	2019-07-26 00:00:00	https://image.tmdb.org/t/p/original//8j58iEBw9pOXFD2L0nt0ZXeHviB.jpg
116	Capone	The 47-year old Al Capone, after 10 years in prison, starts suffering from dementia and comes to be haunted by his violent past.	2020-05-12 00:00:00	https://image.tmdb.org/t/p/original//75gDv38UgRtAukSxNXcjatyQmEa.jpg
117	The Hunger Games: Mockingjay - Part 1	Katniss Everdeen reluctantly becomes the symbol of a mass rebellion against the autocratic Capitol.	2014-11-21 00:00:00	https://image.tmdb.org/t/p/original//4FAA18ZIja70d1Tu5hr5cj2q1sB.jpg
118	The Hobbit: The Battle of the Five Armies	Immediately after the events of The Desolation of Smaug, Bilbo and the dwarves try to defend Erebor's mountain of treasure from others who claim it: the men of the ruined Laketown and the elves of Mirkwood. Meanwhile an army of Orcs led by Azog the Defiler is marching on Erebor, fueled by the rise of the dark lord Sauron. Dwarves, elves and men must unite, and the hope for Middle-Earth falls into Bilbo's hands.	2014-12-17 00:00:00	https://image.tmdb.org/t/p/original//xT98tLqatZPQApyRmlPL12LtiWp.jpg
119	El hoyo	A mysterious place, an indescribable prison, a deep hole. An unknown number of levels. Two inmates living on each level. A descending platform containing food for all of them. An inhuman fight for survival, but also an opportunity for solidarity…	2019-09-22 00:00:00	https://image.tmdb.org/t/p/original//8ZX18L5m6rH5viSYpRnTSbb9eXh.jpg
120	Snowpiercer	In a future where a failed global-warming experiment kills off most life on the planet, a class system evolves aboard the Snowpiercer, a train that travels around the globe via a perpetual-motion engine.	2014-06-27 00:00:00	https://image.tmdb.org/t/p/original//9JPx09Rr0Txq2eSQfjq1DEBR5cx.jpg
121	The Dark Knight	Batman raises the stakes in his war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as the Joker.	2008-07-18 00:00:00	https://image.tmdb.org/t/p/original//qJ2tW6WMUDux911r6m7haRef0WH.jpg
122	Blade Runner 2049	Thirty years after the events of the first film, a new blade runner, LAPD Officer K, unearths a long-buried secret that has the potential to plunge what's left of society into chaos. K's discovery leads him on a quest to find Rick Deckard, a former LAPD blade runner who has been missing for 30 years.	2017-10-06 00:00:00	https://image.tmdb.org/t/p/original//gajva2L0rPYkEWjzgFlBXCAVBE5.jpg
123	The Gentlemen	American expat Mickey Pearson has built a highly profitable marijuana empire in London. When word gets out that he’s looking to cash out of the business forever it triggers plots, schemes, bribery and blackmail in an attempt to steal his domain out from under him.	2020-01-24 00:00:00	https://image.tmdb.org/t/p/original//jtrhTYB7xSrJxR1vusu99nvnZ1g.jpg
124	The Call of the Wild	Buck is a big-hearted dog whose blissful domestic life is turned upside down when he is suddenly uprooted from his California home and transplanted to the exotic wilds of the Yukon during the Gold Rush of the 1890s. As the newest rookie on a mail delivery dog sled team—and later its leader—Buck experiences the adventure of a lifetime, ultimately finding his true place in the world and becoming his own master.	2020-02-21 00:00:00	https://image.tmdb.org/t/p/original//33VdppGbeNxICrFUtW2WpGHvfYc.jpg
125	Iron Man	After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.	2008-05-02 00:00:00	https://image.tmdb.org/t/p/original//78lPtwv72eTNqFW9COBYI0dWDJa.jpg
126	Harry Potter and the Chamber of Secrets	Cars fly, trees fight back, and a mysterious house-elf comes to warn Harry Potter at the start of his second year at Hogwarts. Adventure and danger await when bloody writing on a wall announces: The Chamber Of Secrets Has Been Opened. To save Hogwarts will require all of Harry, Ron and Hermione’s magical abilities and courage.	2002-11-15 00:00:00	https://image.tmdb.org/t/p/original//sdEOH0992YZ0QSxgXNIGLq1ToUi.jpg
127	Jocks	The coach of a college tennis team is given an ultimatum: put together a winning team, or else.	1986-11-14 00:00:00	https://image.tmdb.org/t/p/original//tgjpxqrugdbnADyKGvo65kySaBL.jpg
128	Spider-Man: Homecoming	Following the events of Captain America: Civil War, Peter Parker, with the help of his mentor Tony Stark, tries to balance his life as an ordinary high school student in Queens, New York City, with fighting crime as his superhero alter ego Spider-Man as a new threat, the Vulture, emerges.	2017-07-07 00:00:00	https://image.tmdb.org/t/p/original//c24sv2weTHPsmDa7jEMN0m2P3RT.jpg
129	Star Wars: The Last Jedi	Rey develops her newly discovered abilities with the guidance of Luke Skywalker, who is unsettled by the strength of her powers. Meanwhile, the Resistance prepares to do battle with the First Order.	2017-12-15 00:00:00	https://image.tmdb.org/t/p/original//kOVEVeg59E0wsnXmF9nrh6OmWII.jpg
130	The Lodge	When a father is forced to abruptly depart for work, he leaves his children, Aidan and Mia, at their holiday home in the care of his new girlfriend, Grace. Isolated and alone, a blizzard traps them inside the lodge as terrifying events summon specters from Grace's dark past.	2019-01-25 00:00:00	https://image.tmdb.org/t/p/original//yake2myhbW7c6dKbmwYDy1i40bm.jpg
131	Wonder Woman	An Amazon princess comes to the world of Man in the grips of the First World War to confront the forces of evil and bring an end to human conflict.	2017-06-02 00:00:00	https://image.tmdb.org/t/p/original//gfJGlDaHuWimErCr5Ql0I8x9QSy.jpg
132	Top Gun	For Lieutenant Pete 'Maverick' Mitchell and his friend and co-pilot Nick 'Goose' Bradshaw, being accepted into an elite training school for fighter pilots is a dream come true. But a tragedy, as well as personal demons, will threaten Pete's dreams of becoming an ace pilot.	1986-05-16 00:00:00	https://image.tmdb.org/t/p/original//xUuHj3CgmZQ9P2cMaqQs4J0d4Zc.jpg
133	Gladiator	In the year 180, the death of emperor Marcus Aurelius throws the Roman Empire into chaos.  Maximus is one of the Roman army's most capable and trusted generals and a key advisor to the emperor.  As Marcus' devious son Commodus ascends to the throne, Maximus is set to be executed.  He escapes, but is captured by slave traders.  Renamed Spaniard and forced to become a gladiator, Maximus must battle to the death with other men for the amusement of paying audiences.	2000-05-01 00:00:00	https://image.tmdb.org/t/p/original//dvKsQB84W2Sv6s7jpGmzQBVyQe3.jpg
153	Captain Marvel	The story follows Carol Danvers as she becomes one of the universe’s most powerful heroes when Earth is caught in the middle of a galactic war between two alien races. Set in the 1990s, Captain Marvel is an all-new adventure from a previously unseen period in the history of the Marvel Cinematic Universe.	2019-03-08 00:00:00	https://image.tmdb.org/t/p/original//AtsgWhDnHTq68L0lLsUrCnM7TjG.jpg
134	The Lord of the Rings: The Fellowship of the Ring	Young hobbit Frodo Baggins, after inheriting a mysterious ring from his uncle Bilbo, must leave his home in order to keep it from falling into the hands of its evil creator. Along the way, a fellowship is formed to protect the ringbearer and make sure that the ring arrives at its final destination: Mt. Doom, the only place where it can be destroyed.	2001-12-19 00:00:00	https://image.tmdb.org/t/p/original//6oom5QYQ2yQTMJIbnvbkBL9cHo6.jpg
135	Inheritance	A patriarch of a wealthy and powerful family suddenly passes away, leaving his wife and daughter with a shocking secret inheritance that threatens to unravel and destroy their lives.	2020-05-15 00:00:00	https://image.tmdb.org/t/p/original//l13mt3oHErSkkqJbN1bjzgtK0Vq.jpg
136	千と千尋の神隠し	A young girl, Chihiro, becomes trapped in a strange new world of spirits. When her parents undergo a mysterious transformation, she must call upon the courage she never knew she had to free her family.	2002-09-20 00:00:00	https://image.tmdb.org/t/p/original//8Q2kDDyswBB8SPUJWfNlqvxdDFX.jpg
137	The Shawshank Redemption	Framed in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.	1994-09-23 00:00:00	https://image.tmdb.org/t/p/original//5KCVkau1HEl7ZzfPsKAPM0sMiKc.jpg
138	Doctor Strange	After his career is destroyed, a brilliant but arrogant surgeon gets a new lease on life when a sorcerer takes him under her wing and trains him to defend the world against evil.	2016-11-04 00:00:00	https://image.tmdb.org/t/p/original//gwi5kL7HEWAOTffiA14e4SbOGra.jpg
139	Fast & Furious Presents: Hobbs & Shaw	Ever since US Diplomatic Security Service Agent Hobbs and lawless outcast Shaw first faced off, they just have swapped smacks and bad words. But when cyber-genetically enhanced anarchist Brixton's ruthless actions threaten the future of humanity, both join forces to defeat him. (A spin-off of “The Fate of the Furious,” focusing on Johnson's Luke Hobbs and Statham's Deckard Shaw.)	2019-08-02 00:00:00	https://image.tmdb.org/t/p/original//qRyy2UmjC5ur9bDi3kpNNRCc5nc.jpg
140	Don't Let Go	A detective suffering from a personal loss receives a call from his recently deceased niece. Being able to communicate across time, the two work together to try and stop the crime before it occurs.	2019-08-30 00:00:00	https://image.tmdb.org/t/p/original//uNHueGo5TYCTLzoGULse65GC32Q.jpg
141	The Matrix	Set in the 22nd century, The Matrix tells the story of a computer hacker who joins a group of underground insurgents fighting the vast and powerful computers who now rule the earth.	1999-03-30 00:00:00	https://image.tmdb.org/t/p/original//f89U3ADr1oiB1s9GkdPOEpXUk5H.jpg
142	Terminator Genisys	The year is 2029. John Connor, leader of the resistance continues the war against the machines. At the Los Angeles offensive, John's fears of the unknown future begin to emerge when TECOM spies reveal a new plot by SkyNet that will attack him from both fronts; past and future, and will ultimately change warfare forever.	2015-07-01 00:00:00	https://image.tmdb.org/t/p/original//oZRVDpNtmHk8M1VYy1aeOWUXgbC.jpg
143	Frozen	Young princess Anna of Arendelle dreams about finding true love at her sister Elsa’s coronation. Fate takes her on a dangerous journey in an attempt to end the eternal winter that has fallen over the kingdom. She's accompanied by ice delivery man Kristoff, his reindeer Sven, and snowman Olaf. On an adventure where she will find out what friendship, courage, family, and true love really means.	2013-11-27 00:00:00	https://image.tmdb.org/t/p/original//yald8Lsb4uCRvjIH3spzR84Kdwf.jpg
144	Captain America: Civil War	Following the events of Age of Ultron, the collective governments of the world pass an act designed to regulate all superhuman activity. This polarizes opinion amongst the Avengers, causing two factions to side with Iron Man or Captain America, which causes an epic battle between former allies.	2016-05-06 00:00:00	https://image.tmdb.org/t/p/original//A6BCtWOv5R1X6DmklAuSM6OxnL9.jpg
145	Fury	In the last months of World War II, as the Allies make their final push in the European theatre, a battle-hardened U.S. Army sergeant named 'Wardaddy' commands a Sherman tank called 'Fury' and its five-man crew on a deadly mission behind enemy lines. Outnumbered and outgunned, Wardaddy and his men face overwhelming odds in their heroic attempts to strike at the heart of Nazi Germany.	2014-10-17 00:00:00	https://image.tmdb.org/t/p/original//pfte7wdMobMF4CVHuOxyu6oqeeA.jpg
146	Thor: Ragnarok	Thor is imprisoned on the other side of the universe and finds himself in a race against time to get back to Asgard to stop Ragnarok, the destruction of his home-world and the end of Asgardian civilization, at the hands of an all-powerful new threat, the ruthless Hela.	2017-11-03 00:00:00	https://image.tmdb.org/t/p/original//rzRwTcFvttcN1ZpX2xv4j3tSdJu.jpg
147	The Shining	Jack Torrance accepts a caretaker job at the Overlook Hotel, where he, along with his wife Wendy and their son Danny, must live isolated from the rest of the world for the winter. But they aren't prepared for the madness that lurks within.	1980-05-23 00:00:00	https://image.tmdb.org/t/p/original//b6ko0IKC8MdYBBPkkA1aBPLe2yz.jpg
148	War of the Worlds	Ray Ferrier is a divorced dockworker and less-than-perfect father. Soon after his ex-wife and her new husband drop off his teenage son and young daughter for a rare weekend visit, a strange and powerful lightning storm touches down.	2005-06-29 00:00:00	https://image.tmdb.org/t/p/original//6Biy7R9LfumYshur3YKhpj56MpB.jpg
149	Harry Potter and the Deathly Hallows: Part 2	Harry, Ron and Hermione continue their quest to vanquish the evil Voldemort once and for all. Just as things begin to look hopeless for the young wizards, Harry discovers a trio of magical objects that endow him with powers to rival Voldemort's formidable skills.	2011-07-15 00:00:00	https://image.tmdb.org/t/p/original//c54HpQmuwXjHq2C9wmoACjxoom3.jpg
150	Dracula Untold	Vlad Tepes is a great hero, but when he learns the Sultan is preparing for battle and needs to form an army of 1,000 boys, he vows to find a way to protect his family. Vlad turns to dark forces in order to get the power to destroy his enemies and agrees to go from hero to monster as he's turned into the mythological vampire, Dracula.	2014-10-03 00:00:00	https://image.tmdb.org/t/p/original//m5h3NtZ2ZfryIHl1MvatmANvIqQ.jpg
151	Avengers: Endgame	After the devastating events of Avengers: Infinity War, the universe is in ruins due to the efforts of the Mad Titan, Thanos. With the help of remaining allies, the Avengers must assemble once more in order to undo Thanos' actions and restore order to the universe once and for all, no matter what consequences may be in store.	2019-04-26 00:00:00	https://image.tmdb.org/t/p/original//or06FN3Dka5tukK1e9sl16pB3iy.jpg
152	Dark Waters	A tenacious attorney uncovers a dark secret that connects a growing number of unexplained deaths to one of the world's largest corporations. In the process, he risks everything — his future, his family, and his own life — to expose the truth.	2019-11-22 00:00:00	https://image.tmdb.org/t/p/original//hJ6YEbrjFvToa5c7IiUqILoB6Je.jpg
154	Trolls World Tour	Queen Poppy and Branch make a surprising discovery — there are other Troll worlds beyond their own, and their distinct differences create big clashes between these various tribes. When a mysterious threat puts all of the Trolls across the land in danger, Poppy, Branch, and their band of friends must embark on an epic quest to create harmony among the feuding Trolls to unite them against certain doom.	2020-04-10 00:00:00	https://image.tmdb.org/t/p/original//7W0G3YECgDAfnuiHG91r8WqgIOe.jpg
155	君の名は。	High schoolers Mitsuha and Taki are complete strangers living separate lives. But one night, they suddenly switch places. Mitsuha wakes up in Taki’s body, and he in hers. This bizarre occurrence continues to happen randomly, and the two must adjust their lives around each other.	2017-04-07 00:00:00	https://image.tmdb.org/t/p/original//q719jXXEzOoYaps6babgKnONONX.jpg
156	The Hunt	Twelve strangers wake up in a clearing. They don't know where they are—or how they got there. In the shadow of a dark internet conspiracy theory, ruthless elitists gather at a remote location to hunt humans for sport. But their master plan is about to be derailed when one of the hunted turns the tables on her pursuers.	2020-03-13 00:00:00	https://image.tmdb.org/t/p/original//wxPhn4ef1EAo5njxwBkAEVrlJJG.jpg
157	The Lord of the Rings: The Return of the King	Aragorn is revealed as the heir to the ancient kings as he, Gandalf and the other members of the broken fellowship struggle to save Gondor from Sauron's forces. Meanwhile, Frodo and Sam take the ring closer to the heart of Mordor, the dark lord's realm.	2003-12-17 00:00:00	https://image.tmdb.org/t/p/original//rCzpDGLbOoPwLjy3OAm5NUPOTrC.jpg
158	Ford v Ferrari	American car designer Carroll Shelby and the British-born driver Ken Miles work together to battle corporate interference, the laws of physics, and their own personal demons to build a revolutionary race car for Ford Motor Company and take on the dominating race cars of Enzo Ferrari at the 24 Hours of Le Mans in France in 1966.	2019-11-15 00:00:00	https://image.tmdb.org/t/p/original//6ApDtO7xaWAfPqfi2IARXIzj8QS.jpg
159	Harry Potter and the Half-Blood Prince	As Harry begins his sixth year at Hogwarts, he discovers an old book marked as 'Property of the Half-Blood Prince', and begins to learn more about Lord Voldemort's dark past.	2009-07-08 00:00:00	https://image.tmdb.org/t/p/original//Ag21otqbeynZPGjEbzyr3X5Us0j.jpg
160	Love Wedding Repeat	While trying to make his sister's wedding day go smoothly, Jack finds himself juggling an angry ex-girlfriend, an uninvited guest with a secret, a misplaced sleep sedative, and the girl that got away in alternate versions of the same day.	2020-04-10 00:00:00	https://image.tmdb.org/t/p/original//zn7feouGPU8sELez4qvpp0EtgeQ.jpg
\.


--
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.ratings (rating_id, score, movie_id, user_id) FROM stdin;
1	5	113	1
2	3	96	1
3	3	122	1
4	1	121	1
5	5	91	1
6	5	115	1
7	5	152	1
8	1	109	1
9	1	109	1
10	5	83	1
11	4	135	2
12	4	91	2
13	4	126	2
14	2	147	2
15	4	122	2
16	2	154	2
17	5	117	2
18	4	138	2
19	5	154	2
20	5	112	2
21	2	159	3
22	2	131	3
23	2	130	3
24	3	154	3
25	1	116	3
26	3	92	3
27	1	139	3
28	4	136	3
29	3	143	3
30	1	116	3
31	1	121	4
32	1	141	4
33	3	134	4
34	2	148	4
35	4	156	4
36	3	105	4
37	3	104	4
38	3	134	4
39	1	92	4
40	2	85	4
41	2	116	5
42	1	131	5
43	5	133	5
44	5	141	5
45	4	90	5
46	5	107	5
47	2	117	5
48	3	104	5
49	2	134	5
50	2	140	5
51	5	156	6
52	5	153	6
53	1	108	6
54	4	125	6
55	3	87	6
56	4	143	6
57	2	139	6
58	4	140	6
59	1	131	6
60	4	104	6
61	2	86	7
62	4	139	7
63	5	83	7
64	5	114	7
65	3	99	7
66	2	126	7
67	5	146	7
68	5	160	7
69	5	116	7
70	5	99	7
71	3	85	8
72	5	122	8
73	2	95	8
74	3	141	8
75	2	152	8
76	5	141	8
77	3	117	8
78	4	81	8
79	3	150	8
80	1	159	8
81	1	152	9
82	3	90	9
83	2	96	9
84	4	100	9
85	4	135	9
86	2	113	9
87	4	155	9
88	1	100	9
89	1	109	9
90	2	116	9
91	3	112	10
92	2	128	10
93	5	95	10
94	2	88	10
95	2	121	10
96	3	98	10
97	3	154	10
98	1	152	10
99	2	135	10
100	4	140	10
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY public.users (user_id, email, password) FROM stdin;
1	user0@test.com	test
2	user1@test.com	test
3	user2@test.com	test
4	user3@test.com	test
5	user4@test.com	test
6	user5@test.com	test
7	user6@test.com	test
8	user7@test.com	test
9	user8@test.com	test
10	user9@test.com	test
\.


--
-- Name: movies_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('public.movies_movie_id_seq', 160, true);


--
-- Name: ratings_rating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('public.ratings_rating_id_seq', 100, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('public.users_user_id_seq', 10, true);


--
-- Name: movies movies_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (movie_id);


--
-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (rating_id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: ratings ratings_movie_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(movie_id);


--
-- Name: ratings ratings_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

