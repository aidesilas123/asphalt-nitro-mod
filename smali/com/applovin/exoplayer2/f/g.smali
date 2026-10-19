###### Class com.applovin.exoplayer2.f.g (com.applovin.exoplayer2.f.g)
.class public interface abstract Lcom/applovin/exoplayer2/f/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/f/g$c;,
        Lcom/applovin/exoplayer2/f/g$b;,
        Lcom/applovin/exoplayer2/f/g$a;
    }
.end annotation


# virtual methods
.method public abstract a(Landroid/media/MediaCodec$BufferInfo;)I
.end method

.method public abstract a(IIIJI)V
.end method

.method public abstract a(IILcom/applovin/exoplayer2/c/c;JI)V
.end method

.method public abstract a(Lcom/applovin/exoplayer2/f/g$c;Landroid/os/Handler;)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation
.end method

.method public abstract b(Landroid/view/Surface;)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation
.end method

.method public abstract cH(I)Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract cI(I)Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract cJ(I)V
.end method

.method public abstract dI()V
.end method

.method public abstract i(IJ)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation
.end method

.method public abstract jC()Z
.end method

.method public abstract jD()I
.end method

.method public abstract jE()Landroid/media/MediaFormat;
.end method

.method public abstract l(IZ)V
.end method

.method public abstract release()V
.end method

.method public abstract u(Landroid/os/Bundle;)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation
.end method

###### Class com.applovin.exoplayer2.f.g.a (com.applovin.exoplayer2.f.g$a)
.class public final Lcom/applovin/exoplayer2/f/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final Hk:Lcom/applovin/exoplayer2/f/i;

.field public final Hl:Landroid/media/MediaFormat;

.field public final Hm:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final Hn:Landroid/media/MediaCrypto;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final Ho:Z

.field public final dU:Lcom/applovin/exoplayer2/v;

.field public final jF:I


# direct methods
.method private constructor <init>(Lcom/applovin/exoplayer2/f/i;Landroid/media/MediaFormat;Lcom/applovin/exoplayer2/v;Landroid/view/Surface;Landroid/media/MediaCrypto;IZ)V
    .registers 8
    .param p4    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/g$a;->Hk:Lcom/applovin/exoplayer2/f/i;

    iput-object p2, p0, Lcom/applovin/exoplayer2/f/g$a;->Hl:Landroid/media/MediaFormat;

    iput-object p3, p0, Lcom/applovin/exoplayer2/f/g$a;->dU:Lcom/applovin/exoplayer2/v;

    iput-object p4, p0, Lcom/applovin/exoplayer2/f/g$a;->Hm:Landroid/view/Surface;

    iput-object p5, p0, Lcom/applovin/exoplayer2/f/g$a;->Hn:Landroid/media/MediaCrypto;

    iput p6, p0, Lcom/applovin/exoplayer2/f/g$a;->jF:I

    iput-boolean p7, p0, Lcom/applovin/exoplayer2/f/g$a;->Ho:Z

    return-void
.end method

.method public static a(Lcom/applovin/exoplayer2/f/i;Landroid/media/MediaFormat;Lcom/applovin/exoplayer2/v;Landroid/media/MediaCrypto;)Lcom/applovin/exoplayer2/f/g$a;
    .registers 13
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v8, Lcom/applovin/exoplayer2/f/g$a;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/applovin/exoplayer2/f/g$a;-><init>(Lcom/applovin/exoplayer2/f/i;Landroid/media/MediaFormat;Lcom/applovin/exoplayer2/v;Landroid/view/Surface;Landroid/media/MediaCrypto;IZ)V

    return-object v8
.end method

.method public static a(Lcom/applovin/exoplayer2/f/i;Landroid/media/MediaFormat;Lcom/applovin/exoplayer2/v;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lcom/applovin/exoplayer2/f/g$a;
    .registers 14
    .param p3    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v8, Lcom/applovin/exoplayer2/f/g$a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/applovin/exoplayer2/f/g$a;-><init>(Lcom/applovin/exoplayer2/f/i;Landroid/media/MediaFormat;Lcom/applovin/exoplayer2/v;Landroid/view/Surface;Landroid/media/MediaCrypto;IZ)V

    return-object v8
.end method

###### Class com.applovin.exoplayer2.f.g.b (com.applovin.exoplayer2.f.g$b)
.class public interface abstract Lcom/applovin/exoplayer2/f/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final Hp:Lcom/applovin/exoplayer2/f/g$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/f/m$b;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/f/m$b;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/f/g$b;->Hp:Lcom/applovin/exoplayer2/f/g$b;

    return-void
.end method


# virtual methods
.method public abstract b(Lcom/applovin/exoplayer2/f/g$a;)Lcom/applovin/exoplayer2/f/g;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class com.applovin.exoplayer2.f.g.c (com.applovin.exoplayer2.f.g$c)
.class public interface abstract Lcom/applovin/exoplayer2/f/g$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a(Lcom/applovin/exoplayer2/f/g;JJ)V
.end method
