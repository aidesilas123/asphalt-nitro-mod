###### Class com.applovin.exoplayer2.k.f (com.applovin.exoplayer2.k.f)
.class public final Lcom/applovin/exoplayer2/k/f;
.super Lcom/applovin/exoplayer2/k/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/k/f$a;,
        Lcom/applovin/exoplayer2/k/f$b;
    }
.end annotation


# instance fields
.field private Zj:J

.field private Zk:Z

.field private final Zq:Landroid/content/ContentResolver;

.field private Zr:Landroid/content/res/AssetFileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Zs:Ljava/io/FileInputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ef:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/k/e;-><init>(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/f;->Zq:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/k/l;)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/k/f$b;
        }
    .end annotation

    const/16 v0, 0x7d0

    :try_start_2
    iget-object v1, p1, Lcom/applovin/exoplayer2/k/l;->ef:Landroid/net/Uri;

    iput-object v1, p0, Lcom/applovin/exoplayer2/k/f;->ef:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/k/e;->b(Lcom/applovin/exoplayer2/k/l;)V

    const-string v2, "content"

    iget-object v3, p1, Lcom/applovin/exoplayer2/k/l;->ef:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget v3, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_25

    invoke-static {v2}, Lcom/applovin/exoplayer2/k/f$a;->E(Landroid/os/Bundle;)V

    :cond_25
    iget-object v3, p0, Lcom/applovin/exoplayer2/k/f;->Zq:Landroid/content/ContentResolver;

    const-string v4, "*/*"

    invoke-virtual {v3, v1, v4, v2}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto :goto_36

    :cond_2e
    iget-object v2, p0, Lcom/applovin/exoplayer2/k/f;->Zq:Landroid/content/ContentResolver;

    const-string v3, "r"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    :goto_36
    iput-object v2, p0, Lcom/applovin/exoplayer2/k/f;->Zr:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_cc

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v3

    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Lcom/applovin/exoplayer2/k/f;->Zs:Ljava/io/FileInputStream;

    const/16 v5, 0x7d8

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    cmp-long v9, v3, v7

    if-eqz v9, :cond_5f

    iget-wide v10, p1, Lcom/applovin/exoplayer2/k/l;->uc:J

    cmp-long v12, v10, v3

    if-gtz v12, :cond_59

    goto :goto_5f

    :cond_59
    new-instance p1, Lcom/applovin/exoplayer2/k/f$b;

    invoke-direct {p1, v6, v5}, Lcom/applovin/exoplayer2/k/f$b;-><init>(Ljava/io/IOException;I)V

    throw p1

    :cond_5f
    :goto_5f
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v10

    iget-wide v12, p1, Lcom/applovin/exoplayer2/k/l;->uc:J

    add-long/2addr v12, v10

    invoke-virtual {v1, v12, v13}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v12

    sub-long/2addr v12, v10

    iget-wide v10, p1, Lcom/applovin/exoplayer2/k/l;->uc:J

    cmp-long v2, v12, v10

    if-nez v2, :cond_c6

    const-wide/16 v10, 0x0

    if-nez v9, :cond_96

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    cmp-long v4, v2, v10

    if-nez v4, :cond_84

    iput-wide v7, p0, Lcom/applovin/exoplayer2/k/f;->Zj:J

    goto :goto_9d

    :cond_84
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v12

    sub-long/2addr v2, v12

    iput-wide v2, p0, Lcom/applovin/exoplayer2/k/f;->Zj:J

    cmp-long v1, v2, v10

    if-ltz v1, :cond_90

    goto :goto_9d

    :cond_90
    new-instance p1, Lcom/applovin/exoplayer2/k/f$b;

    invoke-direct {p1, v6, v5}, Lcom/applovin/exoplayer2/k/f$b;-><init>(Ljava/io/IOException;I)V

    throw p1

    :cond_96
    sub-long/2addr v3, v12

    iput-wide v3, p0, Lcom/applovin/exoplayer2/k/f;->Zj:J
    :try_end_99
    .catch Lcom/applovin/exoplayer2/k/f$b; {:try_start_2 .. :try_end_99} :catch_f5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_99} :catch_e8

    cmp-long v1, v3, v10

    if-ltz v1, :cond_c0

    :goto_9d
    iget-wide v0, p1, Lcom/applovin/exoplayer2/k/l;->wC:J

    cmp-long v2, v0, v7

    if-eqz v2, :cond_b0

    iget-wide v2, p0, Lcom/applovin/exoplayer2/k/f;->Zj:J

    cmp-long v4, v2, v7

    if-nez v4, :cond_aa

    goto :goto_ae

    :cond_aa
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_ae
    iput-wide v0, p0, Lcom/applovin/exoplayer2/k/f;->Zj:J

    :cond_b0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/k/f;->Zk:Z

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/k/e;->c(Lcom/applovin/exoplayer2/k/l;)V

    iget-wide v0, p1, Lcom/applovin/exoplayer2/k/l;->wC:J

    cmp-long p1, v0, v7

    if-eqz p1, :cond_bd

    goto :goto_bf

    :cond_bd
    iget-wide v0, p0, Lcom/applovin/exoplayer2/k/f;->Zj:J

    :goto_bf
    return-wide v0

    :cond_c0
    :try_start_c0
    new-instance p1, Lcom/applovin/exoplayer2/k/f$b;

    invoke-direct {p1, v6, v5}, Lcom/applovin/exoplayer2/k/f$b;-><init>(Ljava/io/IOException;I)V

    throw p1

    :cond_c6
    new-instance p1, Lcom/applovin/exoplayer2/k/f$b;

    invoke-direct {p1, v6, v5}, Lcom/applovin/exoplayer2/k/f$b;-><init>(Ljava/io/IOException;I)V

    throw p1

    :cond_cc
    new-instance p1, Lcom/applovin/exoplayer2/k/f$b;

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not open file descriptor for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v2, v0}, Lcom/applovin/exoplayer2/k/f$b;-><init>(Ljava/io/IOException;I)V

    throw p1
    :try_end_e8
    .catch Lcom/applovin/exoplayer2/k/f$b; {:try_start_c0 .. :try_end_e8} :catch_f5
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_e8} :catch_e8

    :catch_e8
    move-exception p1

    new-instance v1, Lcom/applovin/exoplayer2/k/f$b;

    instance-of v2, p1, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_f1

    const/16 v0, 0x7d5

    :cond_f1
    invoke-direct {v1, p1, v0}, Lcom/applovin/exoplayer2/k/f$b;-><init>(Ljava/io/IOException;I)V

    throw v1

    :catch_f5
    move-exception p1

    throw p1
.end method

.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/k/f$b;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/f;->ef:Landroid/net/Uri;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    :try_start_6
    iget-object v3, p0, Lcom/applovin/exoplayer2/k/f;->Zs:Ljava/io/FileInputStream;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_39
    .catchall {:try_start_6 .. :try_end_d} :catchall_37

    :cond_d
    iput-object v0, p0, Lcom/applovin/exoplayer2/k/f;->Zs:Ljava/io/FileInputStream;

    :try_start_f
    iget-object v3, p0, Lcom/applovin/exoplayer2/k/f;->Zr:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_24
    .catchall {:try_start_f .. :try_end_16} :catchall_22

    :cond_16
    iput-object v0, p0, Lcom/applovin/exoplayer2/k/f;->Zr:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/k/f;->Zk:Z

    if-eqz v0, :cond_21

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/k/f;->Zk:Z

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/k/e;->oe()V

    :cond_21
    return-void

    :catchall_22
    move-exception v1

    goto :goto_2b

    :catch_24
    move-exception v3

    :try_start_25
    new-instance v4, Lcom/applovin/exoplayer2/k/f$b;

    invoke-direct {v4, v3, v1}, Lcom/applovin/exoplayer2/k/f$b;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    :goto_2b
    iput-object v0, p0, Lcom/applovin/exoplayer2/k/f;->Zr:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/k/f;->Zk:Z

    if-eqz v0, :cond_36

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/k/f;->Zk:Z

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/k/e;->oe()V

    :cond_36
    throw v1

    :catchall_37
    move-exception v3

    goto :goto_40

    :catch_39
    move-exception v3

    :try_start_3a
    new-instance v4, Lcom/applovin/exoplayer2/k/f$b;

    invoke-direct {v4, v3, v1}, Lcom/applovin/exoplayer2/k/f$b;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_37

    :goto_40
    iput-object v0, p0, Lcom/applovin/exoplayer2/k/f;->Zs:Ljava/io/FileInputStream;

    :try_start_42
    iget-object v4, p0, Lcom/applovin/exoplayer2/k/f;->Zr:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_49

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_49} :catch_57
    .catchall {:try_start_42 .. :try_end_49} :catchall_55

    :cond_49
    iput-object v0, p0, Lcom/applovin/exoplayer2/k/f;->Zr:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/k/f;->Zk:Z

    if-eqz v0, :cond_54

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/k/f;->Zk:Z

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/k/e;->oe()V

    :cond_54
    throw v3

    :catchall_55
    move-exception v1

    goto :goto_5e

    :catch_57
    move-exception v3

    :try_start_58
    new-instance v4, Lcom/applovin/exoplayer2/k/f$b;

    invoke-direct {v4, v3, v1}, Lcom/applovin/exoplayer2/k/f$b;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_55

    :goto_5e
    iput-object v0, p0, Lcom/applovin/exoplayer2/k/f;->Zr:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/k/f;->Zk:Z

    if-eqz v0, :cond_69

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/k/f;->Zk:Z

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/k/e;->oe()V

    :cond_69
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/f;->ef:Landroid/net/Uri;

    return-object v0
.end method

.method public read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/k/f$b;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget-wide v0, p0, Lcom/applovin/exoplayer2/k/f;->Zj:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_e

    return v4

    :cond_e
    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_15

    goto :goto_1b

    :cond_15
    int-to-long v5, p3

    :try_start_16
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :goto_1b
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/f;->Zs:Ljava/io/FileInputStream;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_27} :catch_38

    if-ne p1, v4, :cond_2a

    return v4

    :cond_2a
    iget-wide p2, p0, Lcom/applovin/exoplayer2/k/f;->Zj:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_34

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/applovin/exoplayer2/k/f;->Zj:J

    :cond_34
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/k/e;->fe(I)V

    return p1

    :catch_38
    move-exception p1

    new-instance p2, Lcom/applovin/exoplayer2/k/f$b;

    const/16 p3, 0x7d0

    invoke-direct {p2, p1, p3}, Lcom/applovin/exoplayer2/k/f$b;-><init>(Ljava/io/IOException;I)V

    throw p2
.end method

###### Class com.applovin.exoplayer2.k.f.a (com.applovin.exoplayer2.k.f$a)
.class final Lcom/applovin/exoplayer2/k/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/k/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public static E(Landroid/os/Bundle;)V
    .registers 3

    new-instance v0, Landroid/media/ApplicationMediaCapabilities$Builder;

    invoke-direct {v0}, Landroid/media/ApplicationMediaCapabilities$Builder;-><init>()V

    const-string v1, "video/hevc"

    invoke-virtual {v0, v1}, Landroid/media/ApplicationMediaCapabilities$Builder;->addSupportedVideoMimeType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;

    move-result-object v0

    const-string v1, "android.media.feature.hdr.dolby_vision"

    invoke-virtual {v0, v1}, Landroid/media/ApplicationMediaCapabilities$Builder;->addSupportedHdrType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;

    move-result-object v0

    const-string v1, "android.media.feature.hdr.hdr10"

    invoke-virtual {v0, v1}, Landroid/media/ApplicationMediaCapabilities$Builder;->addSupportedHdrType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;

    move-result-object v0

    const-string v1, "android.media.feature.hdr.hdr10_plus"

    invoke-virtual {v0, v1}, Landroid/media/ApplicationMediaCapabilities$Builder;->addSupportedHdrType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;

    move-result-object v0

    const-string v1, "android.media.feature.hdr.hlg"

    invoke-virtual {v0, v1}, Landroid/media/ApplicationMediaCapabilities$Builder;->addSupportedHdrType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ApplicationMediaCapabilities$Builder;->build()Landroid/media/ApplicationMediaCapabilities;

    move-result-object v0

    const-string v1, "android.provider.extra.MEDIA_CAPABILITIES"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

###### Class com.applovin.exoplayer2.k.f.b (com.applovin.exoplayer2.k.f$b)
.class public Lcom/applovin/exoplayer2/k/f$b;
.super Lcom/applovin/exoplayer2/k/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/k/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/IOException;I)V
    .registers 3
    .param p1    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/k/j;-><init>(Ljava/lang/Throwable;I)V

    return-void
.end method
