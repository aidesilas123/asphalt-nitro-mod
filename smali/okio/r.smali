###### Class okio.r (okio.r)
.class public final Lokio/r;
.super Lokio/q;
.source "NioSystemFileSystem.kt"


# annotations
.annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lokio/q;-><init>()V

    return-void
.end method

.method private final u(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;
    .registers 7

    invoke-virtual {p1}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return-object p1
.end method


# virtual methods
.method public l(Lokio/Path;)Lokio/FileMetadata;
    .registers 21

    move-object/from16 v0, p0

    const-string v1, "path"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lokio/Path;->t()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_e
    const-class v3, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/nio/file/LinkOption;

    sget-object v6, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1, v3, v5}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v3
    :try_end_1c
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_e .. :try_end_1c} :catch_76
    .catch Ljava/nio/file/FileSystemException; {:try_start_e .. :try_end_1c} :catch_76

    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-static {v1}, Ljava/nio/file/Files;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    goto :goto_28

    :cond_27
    move-object v1, v2

    :goto_28
    new-instance v5, Lokio/FileMetadata;

    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v9

    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v10

    if-nez v1, :cond_36

    move-object v11, v2

    goto :goto_3d

    :cond_36
    sget-object v6, Lokio/Path;->a:Lokio/Path$Companion;

    invoke-static {v6, v1, v7, v4, v2}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/nio/file/Path;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v1

    move-object v11, v1

    :goto_3d
    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    if-nez v1, :cond_4d

    move-object v13, v2

    goto :goto_52

    :cond_4d
    invoke-direct {v0, v1}, Lokio/r;->u(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;

    move-result-object v1

    move-object v13, v1

    :goto_52
    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    if-nez v1, :cond_5a

    move-object v14, v2

    goto :goto_5f

    :cond_5a
    invoke-direct {v0, v1}, Lokio/r;->u(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;

    move-result-object v1

    move-object v14, v1

    :goto_5f
    invoke-interface {v3}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    if-nez v1, :cond_66

    goto :goto_6a

    :cond_66
    invoke-direct {v0, v1}, Lokio/r;->u(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;

    move-result-object v2

    :goto_6a
    move-object v15, v2

    const/16 v16, 0x0

    const/16 v17, 0x80

    const/16 v18, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v18}, Lokio/FileMetadata;-><init>(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;ILkotlin/jvm/internal/n;)V

    return-object v5

    :catch_76
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "NioSystemFileSystem"

    return-object v0
.end method
