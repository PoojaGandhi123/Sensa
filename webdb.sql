-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2016 at 12:41 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdb`
--
CREATE DATABASE IF NOT EXISTS `webdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `webdb`;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `answerID` int(11) NOT NULL,
  `answer` blob NOT NULL,
  `upVoteCount` int(11) NOT NULL,
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interests`
--

CREATE TABLE `interests` (
  `interestID` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question_has_answer`
--

CREATE TABLE `question_has_answer` (
  `ID` int(11) NOT NULL,
  `questionID` int(11) NOT NULL,
  `answerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question_has_interest`
--

CREATE TABLE `question_has_interest` (
  `ID` int(11) NOT NULL,
  `questionID` int(11) NOT NULL,
  `interestID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `questionID` int(11) NOT NULL,
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `question` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sanswer`
--

CREATE TABLE `sanswer` (
  `surveyAnswerID` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `votes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE `survey` (
  `surveyID` int(11) NOT NULL,
  `sQuestion` varchar(1000) NOT NULL,
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timeOut` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `survey_has_interest`
--

CREATE TABLE `survey_has_interest` (
  `ID` int(11) NOT NULL,
  `surveyID` int(11) NOT NULL,
  `surveyAnswerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `survey_has_sanswer`
--

CREATE TABLE `survey_has_sanswer` (
  `ID` int(11) NOT NULL,
  `surveyID` int(11) NOT NULL,
  `surveyanswerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aboutMe` varchar(500) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `picURL` varchar(100) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `followLink` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `username`, `email`, `password`, `create_time`, `aboutMe`, `birthday`, `firstName`, `lastName`, `picURL`, `country`, `age`, `gender`, `followLink`) VALUES
(1, NULL, 'mparihar@gmail.com', '7815696ecbf1c96e6894b779456d330e', '2016-03-03 23:15:18', NULL, NULL, 'Manoj', 'Parihar', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_has_answers`
--

CREATE TABLE `user_has_answers` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `answerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_interests`
--

CREATE TABLE `user_has_interests` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `interestID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_questions`
--

CREATE TABLE `user_has_questions` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `questionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_sanswer`
--

CREATE TABLE `user_has_sanswer` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `surveyanswerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_survey`
--

CREATE TABLE `user_has_survey` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `surveyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`answerID`);

--
-- Indexes for table `interests`
--
ALTER TABLE `interests`
  ADD PRIMARY KEY (`interestID`);

--
-- Indexes for table `question_has_answer`
--
ALTER TABLE `question_has_answer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `question_has_interest`
--
ALTER TABLE `question_has_interest`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`questionID`);

--
-- Indexes for table `sanswer`
--
ALTER TABLE `sanswer`
  ADD PRIMARY KEY (`surveyAnswerID`);

--
-- Indexes for table `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`surveyID`);

--
-- Indexes for table `survey_has_interest`
--
ALTER TABLE `survey_has_interest`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `survey_has_sanswer`
--
ALTER TABLE `survey_has_sanswer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `userID_UNIQUE` (`userID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `followLink_UNIQUE` (`followLink`);

--
-- Indexes for table `user_has_answers`
--
ALTER TABLE `user_has_answers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_has_interests`
--
ALTER TABLE `user_has_interests`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_has_questions`
--
ALTER TABLE `user_has_questions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_has_sanswer`
--
ALTER TABLE `user_has_sanswer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_has_survey`
--
ALTER TABLE `user_has_survey`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `interests`
--
ALTER TABLE `interests`
  MODIFY `interestID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `question_has_answer`
--
ALTER TABLE `question_has_answer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `question_has_interest`
--
ALTER TABLE `question_has_interest`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `questionID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sanswer`
--
ALTER TABLE `sanswer`
  MODIFY `surveyAnswerID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `survey`
--
ALTER TABLE `survey`
  MODIFY `surveyID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `survey_has_interest`
--
ALTER TABLE `survey_has_interest`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `survey_has_sanswer`
--
ALTER TABLE `survey_has_sanswer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_has_answers`
--
ALTER TABLE `user_has_answers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_has_interests`
--
ALTER TABLE `user_has_interests`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_has_questions`
--
ALTER TABLE `user_has_questions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_has_sanswer`
--
ALTER TABLE `user_has_sanswer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_has_survey`
--
ALTER TABLE `user_has_survey`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `question_has_answer`
--
ALTER TABLE `question_has_answer`
  ADD CONSTRAINT `answer` FOREIGN KEY (`ID`) REFERENCES `answers` (`answerID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `question` FOREIGN KEY (`ID`) REFERENCES `questions` (`questionID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_has_interest`
--
ALTER TABLE `survey_has_interest`
  ADD CONSTRAINT `survey` FOREIGN KEY (`ID`) REFERENCES `survey` (`surveyID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `surveyAnswer` FOREIGN KEY (`ID`) REFERENCES `sanswer` (`surveyAnswerID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_has_answers`
--
ALTER TABLE `user_has_answers`
  ADD CONSTRAINT `answerID` FOREIGN KEY (`ID`) REFERENCES `answers` (`answerID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_has_interests`
--
ALTER TABLE `user_has_interests`
  ADD CONSTRAINT `interest` FOREIGN KEY (`ID`) REFERENCES `interests` (`interestID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user` FOREIGN KEY (`ID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_has_questions`
--
ALTER TABLE `user_has_questions`
  ADD CONSTRAINT `questionID` FOREIGN KEY (`ID`) REFERENCES `questions` (`questionID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `userID` FOREIGN KEY (`ID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
