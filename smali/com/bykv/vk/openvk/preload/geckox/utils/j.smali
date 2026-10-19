###### Class com.bykv.vk.openvk.preload.geckox.utils.j (com.bykv.vk.openvk.preload.geckox.utils.j)
.class public final Lcom/bykv/vk/openvk/preload/geckox/utils/j;
.super Ljava/lang/Object;
.source "ResVersionUtils.java"


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/Long;
    .registers 9

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/utils/j$1;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/utils/j$1;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_38

    array-length v1, p0

    if-nez v1, :cond_10

    goto :goto_38

    :cond_10
    array-length v1, p0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_38

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    :try_start_1a
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_35

    if-nez v0, :cond_29

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_35

    :cond_29
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_35

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :catch_35
    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_38
    :goto_38
    return-object v0
.end method

.method public static b(Ljava/io/File;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/utils/j$2;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/utils/j$2;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_31

    array-length v0, p0

    if-nez v0, :cond_f

    goto :goto_31

    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_30

    aget-object v3, p0, v2

    :try_start_1a
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2d} :catch_2d

    :catch_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_30
    return-object v0

    :cond_31
    :goto_31
    const/4 p0, 0x0

    return-object p0
.end method
