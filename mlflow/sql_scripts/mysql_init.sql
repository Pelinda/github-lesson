CREATE USER 'gitea'@'%' IDENTIFIED BY 'gitea';
CREATE DATABASE IF NOT EXISTS `gitea`;
GRANT ALL PRIVILEGES ON `gitea` . * TO 'gitea'@'%';

CREATE USER 'mlflow'@'%' IDENTIFIED BY 'mlflow';
CREATE DATABASE IF NOT EXISTS `mlflow`;
GRANT ALL PRIVILEGES ON `mlflow` . * TO 'mlflow'@'%';