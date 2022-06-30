CREATE PROCEDURE INSERTAR_PELICULA @ID INT
	,@primaryTitle VARCHAR(100)
	,@originalTitle VARCHAR(100)
	,@isAdult VARCHAR(10)
	,@startYear DATE
	,@endYear DATE
	,@runtime TIME(7)
	,@TitleTypeId INT
	,@genreId INT
AS
BEGIN
	DECLARE @ID_IMDB INT

	SELECT @ID_IMDB = [id]
	FROM [34.125.124.223].[IMDB].[dbo].[Title]
	WHERE [primaryTitle] = @primaryTitle

	SET NOCOUNT ON;

	IF @ID_IMDB > 0
	BEGIN
		INSERT INTO Title
		VALUES (
			@ID
			,@primaryTitle
			,@originalTitle
			,@isAdult
			,@startYear
			,@endYear
			,@runtime
			,@TitleTypeId
			,@ID_IMDB
			,0
			);

		INSERT INTO TitleGenre
		VALUES (
			@ID
			,@genreId
			);
	END
END
GO

