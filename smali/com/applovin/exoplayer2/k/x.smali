###### Class com.applovin.exoplayer2.k.x (com.applovin.exoplayer2.k.x)
.class public final Lcom/applovin/exoplayer2/k/x;
.super Lcom/applovin/exoplayer2/k/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/k/x$a;
    }
.end annotation


# instance fields
.field private Zi:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Zj:J

.field private Zk:Z

.field private Zr:Landroid/content/res/AssetFileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final abl:Landroid/content/res/Resources;

.field private final abm:Ljava/lang/String;

.field private ef:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/k/e;-><init>(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/x;->abl:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/x;->abm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/k/l;)J
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/k/x$a;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/applovin/exoplayer2/k/l;->ef:Landroid/net/Uri;

    iput-object v2, v1, Lcom/applovin/exoplayer2/k/x;->ef:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rawresource"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x7d5

    const/16 v5, 0x3ec

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v3, :cond_ad

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v8, "android.resource"

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_43

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v9, "\\d+"

    invoke-virtual {v3, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    goto :goto_ad

    :cond_43
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a5

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_63
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_75

    const-string v5, ""

    goto :goto_86

    :cond_75
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_86
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/applovin/exoplayer2/k/x;->abl:Landroid/content/res/Resources;

    iget-object v8, v1, Lcom/applovin/exoplayer2/k/x;->abm:Ljava/lang/String;

    const-string v9, "raw"

    invoke-virtual {v5, v3, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_9d

    goto :goto_bb

    :cond_9d
    new-instance v0, Lcom/applovin/exoplayer2/k/x$a;

    const-string v2, "Resource not found."

    invoke-direct {v0, v2, v7, v4}, Lcom/applovin/exoplayer2/k/x$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :cond_a5
    new-instance v0, Lcom/applovin/exoplayer2/k/x$a;

    const-string v2, "URI must either use scheme rawresource or android.resource"

    invoke-direct {v0, v2, v7, v5}, Lcom/applovin/exoplayer2/k/x$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :cond_ad
    :goto_ad
    :try_start_ad
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_bb
    .catch Ljava/lang/NumberFormatException; {:try_start_ad .. :try_end_bb} :catch_18d

    :goto_bb
    invoke-virtual/range {p0 .. p1}, Lcom/applovin/exoplayer2/k/e;->b(Lcom/applovin/exoplayer2/k/l;)V

    :try_start_be
    iget-object v5, v1, Lcom/applovin/exoplayer2/k/x;->abl:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_c4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_be .. :try_end_c4} :catch_186

    iput-object v3, v1, Lcom/applovin/exoplayer2/k/x;->Zr:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_16d

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, v1, Lcom/applovin/exoplayer2/k/x;->Zi:Ljava/io/InputStream;

    const/16 v5, 0x7d8

    const-wide/16 v10, -0x1

    cmp-long v12, v8, v10

    if-eqz v12, :cond_ec

    :try_start_df
    iget-wide v13, v0, Lcom/applovin/exoplayer2/k/l;->uc:J

    cmp-long v15, v13, v8

    if-gtz v15, :cond_e6

    goto :goto_ec

    :cond_e6
    new-instance v0, Lcom/applovin/exoplayer2/k/x$a;

    invoke-direct {v0, v7, v7, v5}, Lcom/applovin/exoplayer2/k/x$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :cond_ec
    :goto_ec
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v13

    iget-wide v4, v0, Lcom/applovin/exoplayer2/k/l;->uc:J

    add-long/2addr v4, v13

    invoke-virtual {v2, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v4

    sub-long/2addr v4, v13

    iget-wide v13, v0, Lcom/applovin/exoplayer2/k/l;->uc:J

    cmp-long v16, v4, v13

    if-nez v16, :cond_15a

    const-wide/16 v13, 0x0

    if-nez v12, :cond_129

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    cmp-long v8, v4, v13

    if-nez v8, :cond_111

    iput-wide v10, v1, Lcom/applovin/exoplayer2/k/x;->Zj:J

    goto :goto_130

    :cond_111
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    sub-long/2addr v4, v8

    iput-wide v4, v1, Lcom/applovin/exoplayer2/k/x;->Zj:J

    cmp-long v2, v4, v13

    if-ltz v2, :cond_121

    goto :goto_130

    :cond_121
    new-instance v0, Lcom/applovin/exoplayer2/k/x$a;

    const/16 v2, 0x7d8

    invoke-direct {v0, v7, v7, v2}, Lcom/applovin/exoplayer2/k/x$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :cond_129
    sub-long/2addr v8, v4

    iput-wide v8, v1, Lcom/applovin/exoplayer2/k/x;->Zj:J
    :try_end_12c
    .catch Lcom/applovin/exoplayer2/k/x$a; {:try_start_df .. :try_end_12c} :catch_16b
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_12c} :catch_162

    cmp-long v2, v8, v13

    if-ltz v2, :cond_152

    :goto_130
    iget-wide v2, v0, Lcom/applovin/exoplayer2/k/l;->wC:J

    cmp-long v4, v2, v10

    if-eqz v4, :cond_143

    iget-wide v4, v1, Lcom/applovin/exoplayer2/k/x;->Zj:J

    cmp-long v7, v4, v10

    if-nez v7, :cond_13d

    goto :goto_141

    :cond_13d
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_141
    iput-wide v2, v1, Lcom/applovin/exoplayer2/k/x;->Zj:J

    :cond_143
    iput-boolean v6, v1, Lcom/applovin/exoplayer2/k/x;->Zk:Z

    invoke-virtual/range {p0 .. p1}, Lcom/applovin/exoplayer2/k/e;->c(Lcom/applovin/exoplayer2/k/l;)V

    iget-wide v2, v0, Lcom/applovin/exoplayer2/k/l;->wC:J

    cmp-long v0, v2, v10

    if-eqz v0, :cond_14f

    goto :goto_151

    :cond_14f
    iget-wide v2, v1, Lcom/applovin/exoplayer2/k/x;->Zj:J

    :goto_151
    return-wide v2

    :cond_152
    :try_start_152
    new-instance v0, Lcom/applovin/exoplayer2/k/j;

    const/16 v2, 0x7d8

    invoke-direct {v0, v2}, Lcom/applovin/exoplayer2/k/j;-><init>(I)V

    throw v0

    :cond_15a
    new-instance v0, Lcom/applovin/exoplayer2/k/x$a;

    const/16 v2, 0x7d8

    invoke-direct {v0, v7, v7, v2}, Lcom/applovin/exoplayer2/k/x$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
    :try_end_162
    .catch Lcom/applovin/exoplayer2/k/x$a; {:try_start_152 .. :try_end_162} :catch_16b
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_162} :catch_162

    :catch_162
    move-exception v0

    new-instance v2, Lcom/applovin/exoplayer2/k/x$a;

    const/16 v3, 0x7d0

    invoke-direct {v2, v7, v0, v3}, Lcom/applovin/exoplayer2/k/x$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    :catch_16b
    move-exception v0

    throw v0

    :cond_16d
    new-instance v0, Lcom/applovin/exoplayer2/k/x$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource is compressed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-direct {v0, v2, v7, v3}, Lcom/applovin/exoplayer2/k/x$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :catch_186
    move-exception v0

    new-instance v2, Lcom/applovin/exoplayer2/k/x$a;

    invoke-direct {v2, v7, v0, v4}, Lcom/applovin/exoplayer2/k/x$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    :catch_18d
    new-instance v0, Lcom/applovin/exoplayer2/k/x$a;

    const-string v2, "Resource identifier must be an integer."

    invoke-direct {v0, v2, v7, v5}, Lcom/applovin/exoplayer2/k/x$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/k/x$a;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/x;->ef:Landroid/net/Uri;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    :try_start_6
    iget-object v3, p0, Lcom/applovin/exoplayer2/k/x;->Zi:Ljava/io/InputStream;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_39
    .catchall {:try_start_6 .. :try_end_d} :catchall_37

    :cond_d
    iput-object v0, p0, Lcom/applovin/exoplayer2/k/x;->Zi:Ljava/io/InputStream;

    :try_start_f
    iget-object v3, p0, Lcom/applovin/exoplayer2/k/x;->Zr:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_24
    .catchall {:try_start_f .. :try_end_16} :catchall_22

    :cond_16
    iput-object v0, p0, Lcom/applovin/exoplayer2/k/x;->Zr:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/k/x;->Zk:Z

    if-eqz v0, :cond_21

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/k/x;->Zk:Z

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/k/e;->oe()V

    :cond_21
    return-void

    :catchall_22
    move-exception v1

    goto :goto_2b

    :catch_24
    move-exception v3

    :try_start_25
    new-instance v4, Lcom/applovin/exoplayer2/k/x$a;

    invoke-direct {v4, v0, v3, v1}, Lcom/applovin/exoplayer2/k/x$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    :goto_2b
    iput-object v0, p0, Lcom/applovin/exoplayer2/k/x;->Zr:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/k/x;->Zk:Z

    if-eqz v0, :cond_36

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/k/x;->Zk:Z

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/k/e;->oe()V

    :cond_36
    throw v1

    :catchall_37
    move-exception v3

    goto :goto_40

    :catch_39
    move-exception v3

    :try_start_3a
    new-instance v4, Lcom/applovin/exoplayer2/k/x$a;

    invoke-direct {v4, v0, v3, v1}, Lcom/applovin/exoplayer2/k/x$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_37

    :goto_40
    iput-object v0, p0, Lcom/applovin/exoplayer2/k/x;->Zi:Ljava/io/InputStream;

    :try_start_42
    iget-object v4, p0, Lcom/applovin/exoplayer2/k/x;->Zr:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_49

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_49} :catch_57
    .catchall {:try_start_42 .. :try_end_49} :catchall_55

    :cond_49
    iput-object v0, p0, Lcom/applovin/exoplayer2/k/x;->Zr:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/k/x;->Zk:Z

    if-eqz v0, :cond_54

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/k/x;->Zk:Z

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/k/e;->oe()V

    :cond_54
    throw v3

    :catchall_55
    move-exception v1

    goto :goto_5e

    :catch_57
    move-exception v3

    :try_start_58
    new-instance v4, Lcom/applovin/exoplayer2/k/x$a;

    invoke-direct {v4, v0, v3, v1}, Lcom/applovin/exoplayer2/k/x$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_55

    :goto_5e
    iput-object v0, p0, Lcom/applovin/exoplayer2/k/x;->Zr:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/k/x;->Zk:Z

    if-eqz v0, :cond_69

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/k/x;->Zk:Z

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/k/e;->oe()V

    :cond_69
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/x;->ef:Landroid/net/Uri;

    return-object v0
.end method

.method public read([BII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/k/x$a;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget-wide v0, p0, Lcom/applovin/exoplayer2/k/x;->Zj:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_e

    return v4

    :cond_e
    const/16 v2, 0x7d0

    const-wide/16 v5, -0x1

    cmp-long v3, v0, v5

    if-nez v3, :cond_17

    goto :goto_1d

    :cond_17
    int-to-long v7, p3

    :try_start_18
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :goto_1d
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/x;->Zi:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_29} :catch_4d

    if-ne p1, v4, :cond_3f

    iget-wide p1, p0, Lcom/applovin/exoplayer2/k/x;->Zj:J

    cmp-long p3, p1, v5

    if-nez p3, :cond_32

    return v4

    :cond_32
    new-instance p1, Lcom/applovin/exoplayer2/k/x$a;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    const-string p3, "End of stream reached having not read sufficient data."

    invoke-direct {p1, p3, p2, v2}, Lcom/applovin/exoplayer2/k/x$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :cond_3f
    iget-wide p2, p0, Lcom/applovin/exoplayer2/k/x;->Zj:J

    cmp-long v0, p2, v5

    if-eqz v0, :cond_49

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/applovin/exoplayer2/k/x;->Zj:J

    :cond_49
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/k/e;->fe(I)V

    return p1

    :catch_4d
    move-exception p1

    new-instance p2, Lcom/applovin/exoplayer2/k/x$a;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, v2}, Lcom/applovin/exoplayer2/k/x$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2
.end method

###### Class com.applovin.exoplayer2.k.x.a (com.applovin.exoplayer2.k.x$a)
.class public Lcom/applovin/exoplayer2/k/x$a;
.super Lcom/applovin/exoplayer2/k/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/k/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/k/j;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method
