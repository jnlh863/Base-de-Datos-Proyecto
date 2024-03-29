USE [BD_PIA]
GO
/****** Object:  Table [dbo].[Clases]    Script Date: 27/05/2023 05:35:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clases](
	[id_Clase] [int] NOT NULL,
	[descripcion] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Clase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clases_Instructores]    Script Date: 27/05/2023 05:35:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clases_Instructores](
	[id_Instructor] [int] NOT NULL,
	[id_Clase] [int] NOT NULL,
	[nombre_Clase] [char](60) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[hora] [time](7) NOT NULL,
	[lugar] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Instructor] ASC,
	[id_Clase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Disciplinas]    Script Date: 27/05/2023 05:35:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disciplinas](
	[id_disciplina] [int] NOT NULL,
	[id_Instructor] [int] NOT NULL,
	[disciplina] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_disciplina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inscripcion]    Script Date: 27/05/2023 05:35:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inscripcion](
	[id_Inscripcion] [int] NOT NULL,
	[fecha_Ini] [datetime] NOT NULL,
	[fecha_Fin] [datetime] NOT NULL,
	[tipo_Insc] [char](20) NOT NULL,
	[Estado] [char](10) NOT NULL,
	[Precio] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Inscripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructores]    Script Date: 27/05/2023 05:35:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructores](
	[id_Instructor] [int] NOT NULL,
	[nombre] [char](40) NOT NULL,
	[fecha_N] [datetime] NOT NULL,
	[direccion] [varchar](250) NOT NULL,
	[id_telefono] [int] NULL,
	[id_disciplina] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Instructor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Padecimientos]    Script Date: 27/05/2023 05:35:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Padecimientos](
	[id_Padecimientos] [int] NOT NULL,
	[id_Usuario] [int] NOT NULL,
	[padecimientos] [varchar](280) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Padecimientos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recibos]    Script Date: 27/05/2023 05:35:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recibos](
	[id_Recibo] [int] NOT NULL,
	[id_Usuario] [int] NOT NULL,
	[fecha_Pago] [datetime] NOT NULL,
	[Des_Concept] [char](40) NOT NULL,
	[forma_PAGO] [char](30) NOT NULL,
	[monto_PAGAR] [float] NOT NULL,
	[name_Empleado] [char](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Recibo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telefono]    Script Date: 27/05/2023 05:35:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefono](
	[id_telefono] [int] NOT NULL,
	[id_Usuario] [int] NOT NULL,
	[num_tel] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_telefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telefono_Instructor]    Script Date: 27/05/2023 05:35:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefono_Instructor](
	[id_telefono] [int] NOT NULL,
	[id_Instructor] [int] NOT NULL,
	[num_tel_Ins] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_telefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telefono_SOS]    Script Date: 27/05/2023 05:35:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefono_SOS](
	[id_tel_SOS] [int] NOT NULL,
	[id_Usuario] [int] NOT NULL,
	[num_tel_SOS] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tel_SOS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 27/05/2023 05:35:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id_Usuario] [int] NOT NULL,
	[id_Inscripcion] [int] NOT NULL,
	[nombre] [char](40) NOT NULL,
	[fecha_N] [datetime] NOT NULL,
	[email] [char](40) NOT NULL,
	[Estatura] [float] NOT NULL,
	[Peso] [float] NOT NULL,
	[fecha_Insc] [datetime] NOT NULL,
	[id_telefono] [int] NULL,
	[id_tel_SOS] [int] NULL,
	[id_Padecimientos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario_Instructores]    Script Date: 27/05/2023 05:35:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Instructores](
	[id_Instructor] [int] NOT NULL,
	[id_Usuario] [int] NOT NULL,
	[monto_EXTRA] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Instructor] ASC,
	[id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios_Clases]    Script Date: 27/05/2023 05:35:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios_Clases](
	[id_Usuario] [int] NOT NULL,
	[id_Clase] [int] NOT NULL,
	[asistencia] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Usuario] ASC,
	[id_Clase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clases] ([id_Clase], [descripcion]) VALUES (1, N'Clase de hacer cuadros adminales')
INSERT [dbo].[Clases] ([id_Clase], [descripcion]) VALUES (2, N'Clase de hacer YOGA')
GO
INSERT [dbo].[Clases_Instructores] ([id_Instructor], [id_Clase], [nombre_Clase], [fecha], [hora], [lugar]) VALUES (1, 1, N'Hacer Cuadros                                               ', CAST(N'2023-03-02T00:00:00.000' AS DateTime), CAST(N'18:00:00' AS Time), N'av.NoGALAR')
INSERT [dbo].[Clases_Instructores] ([id_Instructor], [id_Clase], [nombre_Clase], [fecha], [hora], [lugar]) VALUES (2, 2, N'Hacer yoga                                                  ', CAST(N'2023-04-02T00:00:00.000' AS DateTime), CAST(N'08:00:00' AS Time), N'av.NoGALAR2')
GO
INSERT [dbo].[Disciplinas] ([id_disciplina], [id_Instructor], [disciplina]) VALUES (1, 1, N'Asesor de ejercicios del cuerpo')
INSERT [dbo].[Disciplinas] ([id_disciplina], [id_Instructor], [disciplina]) VALUES (2, 1, N'Asesor de ejercicios del cuerpo 2')
INSERT [dbo].[Disciplinas] ([id_disciplina], [id_Instructor], [disciplina]) VALUES (3, 2, N'Asesor de ejercicios del cuerpo 3')
GO
INSERT [dbo].[Inscripcion] ([id_Inscripcion], [fecha_Ini], [fecha_Fin], [tipo_Insc], [Estado], [Precio]) VALUES (1, CAST(N'2023-04-16T00:00:00.000' AS DateTime), CAST(N'2023-05-16T00:00:00.000' AS DateTime), N'mensual             ', N'ACTIVO    ', 650)
INSERT [dbo].[Inscripcion] ([id_Inscripcion], [fecha_Ini], [fecha_Fin], [tipo_Insc], [Estado], [Precio]) VALUES (2, CAST(N'2023-01-16T00:00:00.000' AS DateTime), CAST(N'2024-01-16T00:00:00.000' AS DateTime), N'anual               ', N'ACTIVO    ', 890)
INSERT [dbo].[Inscripcion] ([id_Inscripcion], [fecha_Ini], [fecha_Fin], [tipo_Insc], [Estado], [Precio]) VALUES (3, CAST(N'2023-01-16T00:00:00.000' AS DateTime), CAST(N'2023-05-16T00:00:00.000' AS DateTime), N'semestral           ', N'INACTIVO  ', 760)
INSERT [dbo].[Inscripcion] ([id_Inscripcion], [fecha_Ini], [fecha_Fin], [tipo_Insc], [Estado], [Precio]) VALUES (4, CAST(N'2022-04-16T00:00:00.000' AS DateTime), CAST(N'2022-05-16T00:00:00.000' AS DateTime), N'mensual             ', N'INACTIVO  ', 650)
GO
INSERT [dbo].[Instructores] ([id_Instructor], [nombre], [fecha_N], [direccion], [id_telefono], [id_disciplina]) VALUES (1, N'Joel Hdz                                ', CAST(N'1995-08-09T00:00:00.000' AS DateTime), N'Col.Abasolo, Av.Telpan', 1, 1)
INSERT [dbo].[Instructores] ([id_Instructor], [nombre], [fecha_N], [direccion], [id_telefono], [id_disciplina]) VALUES (2, N'Pedro Lopez                             ', CAST(N'1991-08-02T00:00:00.000' AS DateTime), N'Col.Abasolo, Av.Telpan', 3, 3)
GO
INSERT [dbo].[Padecimientos] ([id_Padecimientos], [id_Usuario], [padecimientos]) VALUES (1, 1, N'ASMA')
INSERT [dbo].[Padecimientos] ([id_Padecimientos], [id_Usuario], [padecimientos]) VALUES (2, 1, N'OBESIDAD')
INSERT [dbo].[Padecimientos] ([id_Padecimientos], [id_Usuario], [padecimientos]) VALUES (3, 2, N'DIFICULTAD DEL OLFATO')
INSERT [dbo].[Padecimientos] ([id_Padecimientos], [id_Usuario], [padecimientos]) VALUES (4, 3, N'ALERGIA A LAS NUECES')
INSERT [dbo].[Padecimientos] ([id_Padecimientos], [id_Usuario], [padecimientos]) VALUES (5, 4, N'ALERGIA A LAS NUECES')
GO
INSERT [dbo].[Recibos] ([id_Recibo], [id_Usuario], [fecha_Pago], [Des_Concept], [forma_PAGO], [monto_PAGAR], [name_Empleado]) VALUES (1, 1, CAST(N'2023-04-07T00:00:00.000' AS DateTime), N'plan mensual                            ', N'Efectivo                      ', 650, N'Jorge Vasquez                           ')
INSERT [dbo].[Recibos] ([id_Recibo], [id_Usuario], [fecha_Pago], [Des_Concept], [forma_PAGO], [monto_PAGAR], [name_Empleado]) VALUES (2, 2, CAST(N'2023-04-02T00:00:00.000' AS DateTime), N'plan semestral                          ', N'Efectivo                      ', 890, N'Miguel Vasquez                          ')
GO
INSERT [dbo].[Telefono] ([id_telefono], [id_Usuario], [num_tel]) VALUES (1, 1, N'1234567')
INSERT [dbo].[Telefono] ([id_telefono], [id_Usuario], [num_tel]) VALUES (2, 1, N'1234567983')
INSERT [dbo].[Telefono] ([id_telefono], [id_Usuario], [num_tel]) VALUES (3, 2, N'09973773')
INSERT [dbo].[Telefono] ([id_telefono], [id_Usuario], [num_tel]) VALUES (4, 3, N'37979239')
INSERT [dbo].[Telefono] ([id_telefono], [id_Usuario], [num_tel]) VALUES (5, 4, N'3797922339')
GO
INSERT [dbo].[Telefono_Instructor] ([id_telefono], [id_Instructor], [num_tel_Ins]) VALUES (1, 1, N'1092190912')
INSERT [dbo].[Telefono_Instructor] ([id_telefono], [id_Instructor], [num_tel_Ins]) VALUES (2, 1, N'10921909129892')
INSERT [dbo].[Telefono_Instructor] ([id_telefono], [id_Instructor], [num_tel_Ins]) VALUES (3, 2, N'230039202')
GO
INSERT [dbo].[Telefono_SOS] ([id_tel_SOS], [id_Usuario], [num_tel_SOS]) VALUES (1, 1, N'1234563277')
INSERT [dbo].[Telefono_SOS] ([id_tel_SOS], [id_Usuario], [num_tel_SOS]) VALUES (2, 1, N'1234569127983')
INSERT [dbo].[Telefono_SOS] ([id_tel_SOS], [id_Usuario], [num_tel_SOS]) VALUES (3, 2, N'0997312773')
INSERT [dbo].[Telefono_SOS] ([id_tel_SOS], [id_Usuario], [num_tel_SOS]) VALUES (4, 3, N'3797129239')
INSERT [dbo].[Telefono_SOS] ([id_tel_SOS], [id_Usuario], [num_tel_SOS]) VALUES (5, 4, N'379712923439')
GO
INSERT [dbo].[Usuario] ([id_Usuario], [id_Inscripcion], [nombre], [fecha_N], [email], [Estatura], [Peso], [fecha_Insc], [id_telefono], [id_tel_SOS], [id_Padecimientos]) VALUES (1, 1, N'Jahir Nicolas                           ', CAST(N'2003-08-06T00:00:00.000' AS DateTime), N'jahir@gmail.com                         ', 1.75, 67, CAST(N'2023-04-16T00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[Usuario] ([id_Usuario], [id_Inscripcion], [nombre], [fecha_N], [email], [Estatura], [Peso], [fecha_Insc], [id_telefono], [id_tel_SOS], [id_Padecimientos]) VALUES (2, 2, N'Aldo Guadalupe                          ', CAST(N'2004-08-06T00:00:00.000' AS DateTime), N'aldo@gmail.com                          ', 1.75, 67, CAST(N'2023-01-16T00:00:00.000' AS DateTime), 3, 3, 3)
INSERT [dbo].[Usuario] ([id_Usuario], [id_Inscripcion], [nombre], [fecha_N], [email], [Estatura], [Peso], [fecha_Insc], [id_telefono], [id_tel_SOS], [id_Padecimientos]) VALUES (3, 3, N'Juan Guadalupe                          ', CAST(N'2004-08-09T00:00:00.000' AS DateTime), N'juan@gmail.com                          ', 1.75, 67, CAST(N'2023-01-16T00:00:00.000' AS DateTime), 4, 4, 4)
INSERT [dbo].[Usuario] ([id_Usuario], [id_Inscripcion], [nombre], [fecha_N], [email], [Estatura], [Peso], [fecha_Insc], [id_telefono], [id_tel_SOS], [id_Padecimientos]) VALUES (4, 4, N'Jahir Nicolas                           ', CAST(N'2003-08-06T00:00:00.000' AS DateTime), N'jahir@gmail.com                         ', 1.75, 67, CAST(N'2022-04-16T00:00:00.000' AS DateTime), 5, 5, 5)
GO
INSERT [dbo].[Usuario_Instructores] ([id_Instructor], [id_Usuario], [monto_EXTRA]) VALUES (1, 1, 250)
INSERT [dbo].[Usuario_Instructores] ([id_Instructor], [id_Usuario], [monto_EXTRA]) VALUES (2, 2, 230)
GO
INSERT [dbo].[Usuarios_Clases] ([id_Usuario], [id_Clase], [asistencia]) VALUES (1, 2, N'ASISTIO')
INSERT [dbo].[Usuarios_Clases] ([id_Usuario], [id_Clase], [asistencia]) VALUES (2, 1, N'ASISTIO')
GO
ALTER TABLE [dbo].[Clases_Instructores]  WITH CHECK ADD FOREIGN KEY([id_Clase])
REFERENCES [dbo].[Clases] ([id_Clase])
GO
ALTER TABLE [dbo].[Clases_Instructores]  WITH CHECK ADD FOREIGN KEY([id_Instructor])
REFERENCES [dbo].[Instructores] ([id_Instructor])
GO
ALTER TABLE [dbo].[Disciplinas]  WITH CHECK ADD FOREIGN KEY([id_Instructor])
REFERENCES [dbo].[Instructores] ([id_Instructor])
GO
ALTER TABLE [dbo].[Instructores]  WITH CHECK ADD FOREIGN KEY([id_disciplina])
REFERENCES [dbo].[Disciplinas] ([id_disciplina])
GO
ALTER TABLE [dbo].[Instructores]  WITH CHECK ADD FOREIGN KEY([id_telefono])
REFERENCES [dbo].[Telefono_Instructor] ([id_telefono])
GO
ALTER TABLE [dbo].[Padecimientos]  WITH CHECK ADD FOREIGN KEY([id_Usuario])
REFERENCES [dbo].[Usuario] ([id_Usuario])
GO
ALTER TABLE [dbo].[Recibos]  WITH CHECK ADD FOREIGN KEY([id_Usuario])
REFERENCES [dbo].[Usuario] ([id_Usuario])
GO
ALTER TABLE [dbo].[Telefono]  WITH CHECK ADD FOREIGN KEY([id_Usuario])
REFERENCES [dbo].[Usuario] ([id_Usuario])
GO
ALTER TABLE [dbo].[Telefono_Instructor]  WITH CHECK ADD FOREIGN KEY([id_Instructor])
REFERENCES [dbo].[Instructores] ([id_Instructor])
GO
ALTER TABLE [dbo].[Telefono_SOS]  WITH CHECK ADD FOREIGN KEY([id_Usuario])
REFERENCES [dbo].[Usuario] ([id_Usuario])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([id_Inscripcion])
REFERENCES [dbo].[Inscripcion] ([id_Inscripcion])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([id_Padecimientos])
REFERENCES [dbo].[Padecimientos] ([id_Padecimientos])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([id_tel_SOS])
REFERENCES [dbo].[Telefono_SOS] ([id_tel_SOS])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([id_telefono])
REFERENCES [dbo].[Telefono] ([id_telefono])
GO
ALTER TABLE [dbo].[Usuario_Instructores]  WITH CHECK ADD FOREIGN KEY([id_Instructor])
REFERENCES [dbo].[Instructores] ([id_Instructor])
GO
ALTER TABLE [dbo].[Usuario_Instructores]  WITH CHECK ADD FOREIGN KEY([id_Usuario])
REFERENCES [dbo].[Usuario] ([id_Usuario])
GO
ALTER TABLE [dbo].[Usuarios_Clases]  WITH CHECK ADD FOREIGN KEY([id_Clase])
REFERENCES [dbo].[Clases] ([id_Clase])
GO
ALTER TABLE [dbo].[Usuarios_Clases]  WITH CHECK ADD FOREIGN KEY([id_Usuario])
REFERENCES [dbo].[Usuario] ([id_Usuario])
GO
