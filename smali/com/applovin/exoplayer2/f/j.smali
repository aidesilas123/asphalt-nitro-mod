###### Class com.applovin.exoplayer2.f.j (com.applovin.exoplayer2.f.j)
.class public abstract Lcom/applovin/exoplayer2/f/j;
.super Lcom/applovin/exoplayer2/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/f/j$a;
    }
.end annotation


# static fields
.field private static final Hz:[B


# instance fields
.field private final HA:Lcom/applovin/exoplayer2/f/g$b;

.field private final HB:F

.field private final HC:Lcom/applovin/exoplayer2/c/g;

.field private final HD:Lcom/applovin/exoplayer2/c/g;

.field private final HE:Lcom/applovin/exoplayer2/c/g;

.field private final HF:Lcom/applovin/exoplayer2/f/d;

.field private final HG:Lcom/applovin/exoplayer2/l/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/l/af<",
            "Lcom/applovin/exoplayer2/v;",
            ">;"
        }
    .end annotation
.end field

.field private final HH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final HI:Landroid/media/MediaCodec$BufferInfo;

.field private final HJ:[J

.field private final HK:[J

.field private final HL:[J

.field private HM:Lcom/applovin/exoplayer2/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private HN:Lcom/applovin/exoplayer2/d/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private HO:Lcom/applovin/exoplayer2/d/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private HP:Landroid/media/MediaCrypto;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private HQ:Z

.field private HR:J

.field private HS:F

.field private HU:F

.field private HV:Lcom/applovin/exoplayer2/f/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private HW:Lcom/applovin/exoplayer2/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private HX:Landroid/media/MediaFormat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private HY:Z

.field private HZ:F

.field private Hk:Lcom/applovin/exoplayer2/f/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private IA:Z

.field private IB:Z

.field private IC:Z

.field private ID:J

.field private IE:J

.field private IF:Z

.field private IG:Z

.field private IH:Z

.field private II:Z

.field private IJ:Z

.field private IK:Lcom/applovin/exoplayer2/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected IL:Lcom/applovin/exoplayer2/c/e;

.field private IM:J

.field private IN:J

.field private IO:I

.field private Ia:Ljava/util/ArrayDeque;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/applovin/exoplayer2/f/i;",
            ">;"
        }
    .end annotation
.end field

.field private Ib:Lcom/applovin/exoplayer2/f/j$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Ic:I

.field private Id:Z

.field private Ie:Z

.field private If:Z

.field private Ig:Z

.field private Ih:Z

.field private Ii:Z

.field private Ij:Z

.field private Ik:Z

.field private Il:Z

.field private Im:Z

.field private In:Lcom/applovin/exoplayer2/f/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Io:J

.field private Ip:I

.field private Iq:I

.field private Ir:Z

.field private Is:Z

.field private It:Z

.field private Iu:Z

.field private Iv:Z

.field private Iw:Z

.field private Ix:I

.field private Iy:I

.field private Iz:I

.field private final bf:Z

.field private final bg:Lcom/applovin/exoplayer2/f/k;

.field private bi:Z

.field private bj:Z

.field private kT:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private lS:Lcom/applovin/exoplayer2/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/applovin/exoplayer2/f/j;->Hz:[B

    return-void

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/applovin/exoplayer2/f/g$b;Lcom/applovin/exoplayer2/f/k;ZF)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e;-><init>(I)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/f/j;->HA:Lcom/applovin/exoplayer2/f/g$b;

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/f/k;

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->bg:Lcom/applovin/exoplayer2/f/k;

    iput-boolean p4, p0, Lcom/applovin/exoplayer2/f/j;->bf:Z

    iput p5, p0, Lcom/applovin/exoplayer2/f/j;->HB:F

    invoke-static {}, Lcom/applovin/exoplayer2/c/g;->hf()Lcom/applovin/exoplayer2/c/g;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->HC:Lcom/applovin/exoplayer2/c/g;

    new-instance p1, Lcom/applovin/exoplayer2/c/g;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/applovin/exoplayer2/c/g;-><init>(I)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    new-instance p1, Lcom/applovin/exoplayer2/c/g;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Lcom/applovin/exoplayer2/c/g;-><init>(I)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->HE:Lcom/applovin/exoplayer2/c/g;

    new-instance p1, Lcom/applovin/exoplayer2/f/d;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/f/d;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->HF:Lcom/applovin/exoplayer2/f/d;

    new-instance p3, Lcom/applovin/exoplayer2/l/af;

    invoke-direct {p3}, Lcom/applovin/exoplayer2/l/af;-><init>()V

    iput-object p3, p0, Lcom/applovin/exoplayer2/f/j;->HG:Lcom/applovin/exoplayer2/l/af;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/applovin/exoplayer2/f/j;->HH:Ljava/util/ArrayList;

    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lcom/applovin/exoplayer2/f/j;->HI:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/applovin/exoplayer2/f/j;->HS:F

    iput p3, p0, Lcom/applovin/exoplayer2/f/j;->HU:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Lcom/applovin/exoplayer2/f/j;->HR:J

    const/16 p5, 0xa

    new-array v0, p5, [J

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HJ:[J

    new-array v0, p5, [J

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HK:[J

    new-array p5, p5, [J

    iput-object p5, p0, Lcom/applovin/exoplayer2/f/j;->HL:[J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/f/j;->IM:J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/f/j;->IN:J

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/c/g;->by(I)V

    iget-object p1, p1, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/applovin/exoplayer2/f/j;->HZ:F

    iput p2, p0, Lcom/applovin/exoplayer2/f/j;->Ic:I

    iput p2, p0, Lcom/applovin/exoplayer2/f/j;->Ix:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/applovin/exoplayer2/f/j;->Ip:I

    iput p1, p0, Lcom/applovin/exoplayer2/f/j;->Iq:I

    iput-wide p3, p0, Lcom/applovin/exoplayer2/f/j;->Io:J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/f/j;->ID:J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/f/j;->IE:J

    iput p2, p0, Lcom/applovin/exoplayer2/f/j;->Iy:I

    iput p2, p0, Lcom/applovin/exoplayer2/f/j;->Iz:I

    return-void
.end method

.method private P(Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/f/i;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/f/l$b;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->bg:Lcom/applovin/exoplayer2/f/k;

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    invoke-virtual {p0, v0, v1, p1}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/f/k;Lcom/applovin/exoplayer2/v;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_46

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->bg:Lcom/applovin/exoplayer2/f/k;

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/f/k;Lcom/applovin/exoplayer2/v;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_46

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drm session requires secure decoder for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    iget-object v1, v1, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaCodecRenderer"

    invoke-static {v1, p1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    return-object v0
.end method

.method private static Q(Ljava/lang/String;)Z
    .registers 3

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_39

    if-ne v0, v1, :cond_18

    const-string v1, "OMX.SEC.avc.dec"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    :cond_18
    const/16 v1, 0x13

    if-ne v0, v1, :cond_37

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->acY:Ljava/lang/String;

    const-string v1, "SM-G800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "OMX.Exynos.avc.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    goto :goto_39

    :cond_37
    const/4 p0, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 p0, 0x1

    :goto_3a
    return p0
.end method

.method private R(Ljava/lang/String;)I
    .registers 5

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_32

    const-string v1, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    sget-object v1, Lcom/applovin/exoplayer2/l/ai;->acY:Ljava/lang/String;

    const-string v2, "SM-T585"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "SM-A510"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "SM-A520"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "SM-J700"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    :cond_30
    const/4 p1, 0x2

    return p1

    :cond_32
    const/16 v1, 0x18

    if-ge v0, v1, :cond_6a

    const-string v0, "OMX.Nvidia.h264.decode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    :cond_46
    sget-object p1, Lcom/applovin/exoplayer2/l/ai;->acW:Ljava/lang/String;

    const-string v0, "flounder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "flounder_lte"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "grouper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "tilapia"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    :cond_68
    const/4 p1, 0x1

    return p1

    :cond_6a
    const/4 p1, 0x0

    return p1
.end method

.method private static S(Ljava/lang/String;)Z
    .registers 3

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_10

    const-string v0, "c2.android.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private static T(Ljava/lang/String;)Z
    .registers 3

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_e

    const-string v1, "OMX.google.vorbis.decoder"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    :cond_e
    const/16 v1, 0x13

    if-gt v0, v1, :cond_36

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->acW:Ljava/lang/String;

    const-string v1, "hb2000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "stvm8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_24
    const-string v0, "OMX.amlogic.avc.decoder.awesome"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "OMX.amlogic.avc.decoder.awesome.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_36

    :cond_34
    const/4 p0, 0x1

    goto :goto_37

    :cond_36
    const/4 p0, 0x0

    :goto_37
    return p0
.end method

.method private static U(Ljava/lang/String;)Z
    .registers 3

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_4c

    const-string v0, "OMX.SEC.mp3.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4c

    sget-object p0, Lcom/applovin/exoplayer2/l/ai;->acX:Ljava/lang/String;

    const-string v0, "samsung"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4c

    sget-object p0, Lcom/applovin/exoplayer2/l/ai;->acW:Ljava/lang/String;

    const-string v0, "baffin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "grand"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "fortuna"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "gprimelte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "j2y18lte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "ms01"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4c

    :cond_4a
    const/4 p0, 0x1

    goto :goto_4d

    :cond_4c
    const/4 p0, 0x0

    :goto_4d
    return p0
.end method

.method private static V(Ljava/lang/String;)Z
    .registers 3

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_10

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private a(Landroid/media/MediaCrypto;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/f/j$a;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->Ia:Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    if-nez v0, :cond_39

    :try_start_5
    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/f/j;->P(Z)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/applovin/exoplayer2/f/j;->Ia:Ljava/util/ArrayDeque;

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/f/j;->bf:Z

    if-eqz v3, :cond_18

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_2a

    :cond_18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->Ia:Ljava/util/ArrayDeque;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/f/i;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_2a
    :goto_2a
    iput-object v1, p0, Lcom/applovin/exoplayer2/f/j;->Ib:Lcom/applovin/exoplayer2/f/j$a;
    :try_end_2c
    .catch Lcom/applovin/exoplayer2/f/l$b; {:try_start_5 .. :try_end_2c} :catch_2d

    goto :goto_39

    :catch_2d
    move-exception p1

    new-instance v0, Lcom/applovin/exoplayer2/f/j$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    const v2, -0xc34e

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/applovin/exoplayer2/f/j$a;-><init>(Lcom/applovin/exoplayer2/v;Ljava/lang/Throwable;ZI)V

    throw v0

    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->Ia:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9c

    :goto_41
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    if-nez v0, :cond_99

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->Ia:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/f/i;

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/f/i;)Z

    move-result v2

    if-nez v2, :cond_54

    return-void

    :cond_54
    :try_start_54
    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/f/i;Landroid/media/MediaCrypto;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_41

    :catch_58
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to initialize decoder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaCodecRenderer"

    invoke-static {v4, v3, v2}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j;->Ia:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v3, Lcom/applovin/exoplayer2/f/j$a;

    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    invoke-direct {v3, v4, v2, p2, v0}, Lcom/applovin/exoplayer2/f/j$a;-><init>(Lcom/applovin/exoplayer2/v;Ljava/lang/Throwable;ZLcom/applovin/exoplayer2/f/i;)V

    invoke-virtual {p0, v3}, Lcom/applovin/exoplayer2/f/j;->i(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->Ib:Lcom/applovin/exoplayer2/f/j$a;

    if-nez v0, :cond_85

    iput-object v3, p0, Lcom/applovin/exoplayer2/f/j;->Ib:Lcom/applovin/exoplayer2/f/j$a;

    goto :goto_8d

    :cond_85
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->Ib:Lcom/applovin/exoplayer2/f/j$a;

    invoke-static {v0, v3}, Lcom/applovin/exoplayer2/f/j$a;->a(Lcom/applovin/exoplayer2/f/j$a;Lcom/applovin/exoplayer2/f/j$a;)Lcom/applovin/exoplayer2/f/j$a;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->Ib:Lcom/applovin/exoplayer2/f/j$a;

    :goto_8d
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->Ia:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_96

    goto :goto_41

    :cond_96
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->Ib:Lcom/applovin/exoplayer2/f/j$a;

    throw p1

    :cond_99
    iput-object v1, p0, Lcom/applovin/exoplayer2/f/j;->Ia:Ljava/util/ArrayDeque;

    return-void

    :cond_9c
    new-instance p1, Lcom/applovin/exoplayer2/f/j$a;

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    const v2, -0xc34f

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/applovin/exoplayer2/f/j$a;-><init>(Lcom/applovin/exoplayer2/v;Ljava/lang/Throwable;ZI)V

    throw p1
.end method

.method private a(Lcom/applovin/exoplayer2/f/i;Landroid/media/MediaCrypto;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p1, Lcom/applovin/exoplayer2/f/i;->name:Ljava/lang/String;

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x17

    if-ge v0, v3, :cond_d

    const/high16 v4, -0x40800000    # -1.0f

    goto :goto_19

    :cond_d
    iget v4, p0, Lcom/applovin/exoplayer2/f/j;->HU:F

    iget-object v5, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->af()[Lcom/applovin/exoplayer2/v;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/applovin/exoplayer2/f/j;->a(FLcom/applovin/exoplayer2/v;[Lcom/applovin/exoplayer2/v;)F

    move-result v4

    :goto_19
    iget v5, p0, Lcom/applovin/exoplayer2/f/j;->HB:F

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_20

    goto :goto_21

    :cond_20
    move v2, v4

    :goto_21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createCodec:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/applovin/exoplayer2/l/ah;->bg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    invoke-virtual {p0, p1, v6, p2, v2}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;Landroid/media/MediaCrypto;F)Lcom/applovin/exoplayer2/f/g$a;

    move-result-object p2

    iget-boolean v6, p0, Lcom/applovin/exoplayer2/f/j;->IJ:Z

    if-eqz v6, :cond_57

    if-lt v0, v3, :cond_57

    new-instance v0, Lcom/applovin/exoplayer2/f/a$a;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->M()I

    move-result v3

    iget-boolean v6, p0, Lcom/applovin/exoplayer2/f/j;->bi:Z

    iget-boolean v7, p0, Lcom/applovin/exoplayer2/f/j;->bj:Z

    invoke-direct {v0, v3, v6, v7}, Lcom/applovin/exoplayer2/f/a$a;-><init>(IZZ)V

    invoke-virtual {v0, p2}, Lcom/applovin/exoplayer2/f/a$a;->a(Lcom/applovin/exoplayer2/f/g$a;)Lcom/applovin/exoplayer2/f/a;

    move-result-object p2

    goto :goto_5d

    :cond_57
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HA:Lcom/applovin/exoplayer2/f/g$b;

    invoke-interface {v0, p2}, Lcom/applovin/exoplayer2/f/g$b;->b(Lcom/applovin/exoplayer2/f/g$a;)Lcom/applovin/exoplayer2/f/g;

    move-result-object p2

    :goto_5d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-object p2, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->Hk:Lcom/applovin/exoplayer2/f/i;

    iput v2, p0, Lcom/applovin/exoplayer2/f/j;->HZ:F

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HW:Lcom/applovin/exoplayer2/v;

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/f/j;->R(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->Ic:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HW:Lcom/applovin/exoplayer2/v;

    invoke-static {v1, v0}, Lcom/applovin/exoplayer2/f/j;->a(Ljava/lang/String;Lcom/applovin/exoplayer2/v;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Id:Z

    invoke-static {v1}, Lcom/applovin/exoplayer2/f/j;->Q(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Ie:Z

    invoke-static {v1}, Lcom/applovin/exoplayer2/f/j;->S(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->If:Z

    invoke-static {v1}, Lcom/applovin/exoplayer2/f/j;->T(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Ig:Z

    invoke-static {v1}, Lcom/applovin/exoplayer2/f/j;->V(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Ih:Z

    invoke-static {v1}, Lcom/applovin/exoplayer2/f/j;->U(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Ii:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HW:Lcom/applovin/exoplayer2/v;

    invoke-static {v1, v0}, Lcom/applovin/exoplayer2/f/j;->b(Ljava/lang/String;Lcom/applovin/exoplayer2/v;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Ij:Z

    invoke-static {p1}, Lcom/applovin/exoplayer2/f/j;->b(Lcom/applovin/exoplayer2/f/i;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_b0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->jY()Z

    move-result v0

    if-eqz v0, :cond_ae

    goto :goto_b0

    :cond_ae
    const/4 v0, 0x0

    goto :goto_b1

    :cond_b0
    :goto_b0
    const/4 v0, 0x1

    :goto_b1
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Im:Z

    invoke-interface {p2}, Lcom/applovin/exoplayer2/f/g;->jC()Z

    move-result p2

    if-eqz p2, :cond_c4

    iput-boolean v3, p0, Lcom/applovin/exoplayer2/f/j;->Iw:Z

    iput v3, p0, Lcom/applovin/exoplayer2/f/j;->Ix:I

    iget p2, p0, Lcom/applovin/exoplayer2/f/j;->Ic:I

    if-eqz p2, :cond_c2

    const/4 v2, 0x1

    :cond_c2
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->Ik:Z

    :cond_c4
    iget-object p1, p1, Lcom/applovin/exoplayer2/f/i;->name:Ljava/lang/String;

    const-string p2, "c2.android.mp3.decoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d5

    new-instance p1, Lcom/applovin/exoplayer2/f/e;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/f/e;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->In:Lcom/applovin/exoplayer2/f/e;

    :cond_d5
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->P()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_e5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v8, 0x3e8

    add-long/2addr p1, v8

    iput-wide p1, p0, Lcom/applovin/exoplayer2/f/j;->Io:J

    :cond_e5
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->IL:Lcom/applovin/exoplayer2/c/e;

    iget p2, p1, Lcom/applovin/exoplayer2/c/e;->rv:I

    add-int/2addr p2, v3

    iput p2, p1, Lcom/applovin/exoplayer2/c/e;->rv:I

    sub-long v4, v6, v4

    move-object v0, p0

    move-wide v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/exoplayer2/f/j;->e(Ljava/lang/String;JJ)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/d/f;Lcom/applovin/exoplayer2/d/f;)Z
    .registers 9
    .param p3    # Lcom/applovin/exoplayer2/d/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/applovin/exoplayer2/d/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p4, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-eqz p4, :cond_43

    if-nez p3, :cond_a

    goto :goto_43

    :cond_a
    sget v2, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_11

    return v1

    :cond_11
    sget-object v2, Lcom/applovin/exoplayer2/h;->an:Ljava/util/UUID;

    invoke-interface {p3}, Lcom/applovin/exoplayer2/d/f;->hu()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_43

    invoke-interface {p4}, Lcom/applovin/exoplayer2/d/f;->hu()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_28

    goto :goto_43

    :cond_28
    invoke-direct {p0, p4}, Lcom/applovin/exoplayer2/f/j;->e(Lcom/applovin/exoplayer2/d/f;)Lcom/applovin/exoplayer2/d/n;

    move-result-object p3

    if-nez p3, :cond_2f

    return v1

    :cond_2f
    iget-boolean p3, p3, Lcom/applovin/exoplayer2/d/n;->tp:Z

    if-eqz p3, :cond_35

    const/4 p2, 0x0

    goto :goto_3b

    :cond_35
    iget-object p2, p2, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    invoke-interface {p4, p2}, Lcom/applovin/exoplayer2/d/f;->A(Ljava/lang/String;)Z

    move-result p2

    :goto_3b
    iget-boolean p1, p1, Lcom/applovin/exoplayer2/f/i;->Hu:Z

    if-nez p1, :cond_42

    if-eqz p2, :cond_42

    return v1

    :cond_42
    return v0

    :cond_43
    :goto_43
    return v1
.end method

.method private static a(Ljava/lang/String;Lcom/applovin/exoplayer2/v;)Z
    .registers 4

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_18

    iget-object p1, p1, Lcom/applovin/exoplayer2/v;->dB:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "OMX.MTK.VIDEO.DECODER.AVC"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private aM(J)Z
    .registers 8

    iget-wide v0, p0, Lcom/applovin/exoplayer2/f/j;->HR:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_19

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/applovin/exoplayer2/f/j;->HR:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_17

    goto :goto_19

    :cond_17
    const/4 p1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p1, 0x1

    :goto_1a
    return p1
.end method

.method private aO(J)Z
    .registers 9

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_24

    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j;->HH:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_21

    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->HH:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_24
    return v1
.end method

.method private static b(Lcom/applovin/exoplayer2/f/i;)Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/i;->name:Ljava/lang/String;

    sget v1, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v2, 0x19

    if-gt v1, v2, :cond_10

    const-string v2, "OMX.rk.video_decoder.avc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    :cond_10
    const/16 v2, 0x11

    if-gt v1, v2, :cond_1c

    const-string v2, "OMX.allwinner.video.decoder.avc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    :cond_1c
    const/16 v2, 0x1d

    if-gt v1, v2, :cond_30

    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    :cond_30
    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->acX:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->acY:Ljava/lang/String;

    const-string v1, "AFTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/f/i;->Hu:Z

    if-eqz p0, :cond_4a

    :cond_48
    const/4 p0, 0x1

    goto :goto_4b

    :cond_4a
    const/4 p0, 0x0

    :goto_4b
    return p0
.end method

.method private static b(Ljava/lang/IllegalStateException;)Z
    .registers 4

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_e

    invoke-static {p0}, Lcom/applovin/exoplayer2/f/j;->c(Ljava/lang/IllegalStateException;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    if-lez v0, :cond_25

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.media.MediaCodec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    return v1
.end method

.method private static b(Ljava/lang/String;Lcom/applovin/exoplayer2/v;)Z
    .registers 5

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-gt v0, v2, :cond_14

    iget p1, p1, Lcom/applovin/exoplayer2/v;->dL:I

    if-ne p1, v1, :cond_14

    const-string p1, "OMX.MTK.AUDIO.DECODER.MP3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method private c(Lcom/applovin/exoplayer2/d/f;)V
    .registers 3
    .param p1    # Lcom/applovin/exoplayer2/d/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HO:Lcom/applovin/exoplayer2/d/f;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/d/m0;->b(Lcom/applovin/exoplayer2/d/f;Lcom/applovin/exoplayer2/d/f;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->HO:Lcom/applovin/exoplayer2/d/f;

    return-void
.end method

.method private static c(Ljava/lang/IllegalStateException;)Z
    .registers 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    instance-of p0, p0, Landroid/media/MediaCodec$CodecException;

    return p0
.end method

.method private cU(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->ae()Lcom/applovin/exoplayer2/w;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->HC:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/c/g;->clear()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->HC:Lcom/applovin/exoplayer2/c/g;

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, v0, v1, p1}, Lcom/applovin/exoplayer2/e;->a(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;I)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, -0x5

    if-ne p1, v2, :cond_19

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/w;)Lcom/applovin/exoplayer2/c/h;

    return v1

    :cond_19
    const/4 v0, -0x4

    if-ne p1, v0, :cond_29

    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->HC:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/a;->gY()Z

    move-result p1

    if-eqz p1, :cond_29

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/f/j;->IF:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->ks()V

    :cond_29
    const/4 p1, 0x0

    return p1
.end method

.method private d(Lcom/applovin/exoplayer2/d/f;)V
    .registers 3
    .param p1    # Lcom/applovin/exoplayer2/d/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HN:Lcom/applovin/exoplayer2/d/f;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/d/m0;->b(Lcom/applovin/exoplayer2/d/f;Lcom/applovin/exoplayer2/d/f;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->HN:Lcom/applovin/exoplayer2/d/f;

    return-void
.end method

.method private static d(Ljava/lang/IllegalStateException;)Z
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private e(Lcom/applovin/exoplayer2/d/f;)Lcom/applovin/exoplayer2/d/n;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    invoke-interface {p1}, Lcom/applovin/exoplayer2/d/f;->hv()Lcom/applovin/exoplayer2/c/b;

    move-result-object p1

    if-eqz p1, :cond_2a

    instance-of v0, p1, Lcom/applovin/exoplayer2/d/n;

    if-eqz v0, :cond_b

    goto :goto_2a

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting FrameworkCryptoConfig but found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    const/16 v1, 0x1771

    invoke-virtual {p0, v0, p1, v1}, Lcom/applovin/exoplayer2/e;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;I)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    throw p1

    :cond_2a
    :goto_2a
    check-cast p1, Lcom/applovin/exoplayer2/d/n;

    return-object p1
.end method

.method private kc()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Iv:Z

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->HF:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/f/d;->clear()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->HE:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/c/g;->clear()V

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Iu:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->It:Z

    return-void
.end method

.method private kg()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/f/g;->dI()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->kh()V

    return-void

    :catchall_9
    move-exception v0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->kh()V

    throw v0
.end method

.method private kj()Z
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->Iq:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private kk()V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->Ip:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private kl()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->Iq:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->kT:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private km()Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1ee

    iget v2, p0, Lcom/applovin/exoplayer2/f/j;->Iy:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1ee

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->IF:Z

    if-eqz v2, :cond_10

    goto/16 :goto_1ee

    :cond_10
    iget v2, p0, Lcom/applovin/exoplayer2/f/j;->Ip:I

    if-gez v2, :cond_2c

    invoke-interface {v0}, Lcom/applovin/exoplayer2/f/g;->jD()I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->Ip:I

    if-gez v0, :cond_1d

    return v1

    :cond_1d
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    invoke-interface {v4, v0}, Lcom/applovin/exoplayer2/f/g;->cH(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v2, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/c/g;->clear()V

    :cond_2c
    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->Iy:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4a

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Im:Z

    if-eqz v0, :cond_36

    goto :goto_47

    :cond_36
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->IB:Z

    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    iget v5, p0, Lcom/applovin/exoplayer2/f/j;->Ip:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-interface/range {v4 .. v10}, Lcom/applovin/exoplayer2/f/g;->a(IIIJI)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kk()V

    :goto_47
    iput v3, p0, Lcom/applovin/exoplayer2/f/j;->Iy:I

    return v1

    :cond_4a
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Ik:Z

    if-eqz v0, :cond_6b

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/f/j;->Ik:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    iget-object v0, v0, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/applovin/exoplayer2/f/j;->Hz:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    iget v4, p0, Lcom/applovin/exoplayer2/f/j;->Ip:I

    const/4 v5, 0x0

    array-length v6, v1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/applovin/exoplayer2/f/g;->a(IIIJI)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kk()V

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->IA:Z

    return v2

    :cond_6b
    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->Ix:I

    if-ne v0, v2, :cond_90

    const/4 v0, 0x0

    :goto_70
    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->HW:Lcom/applovin/exoplayer2/v;

    iget-object v4, v4, Lcom/applovin/exoplayer2/v;->dB:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_8e

    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->HW:Lcom/applovin/exoplayer2/v;

    iget-object v4, v4, Lcom/applovin/exoplayer2/v;->dB:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v5, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    iget-object v5, v5, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    :cond_8e
    iput v3, p0, Lcom/applovin/exoplayer2/f/j;->Ix:I

    :cond_90
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    iget-object v0, v0, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->ae()Lcom/applovin/exoplayer2/w;

    move-result-object v4

    :try_start_9c
    iget-object v5, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {p0, v4, v5, v1}, Lcom/applovin/exoplayer2/e;->a(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;I)I

    move-result v5
    :try_end_a2
    .catch Lcom/applovin/exoplayer2/c/g$a; {:try_start_9c .. :try_end_a2} :catch_1e3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->R()Z

    move-result v6

    if-eqz v6, :cond_ac

    iget-wide v6, p0, Lcom/applovin/exoplayer2/f/j;->ID:J

    iput-wide v6, p0, Lcom/applovin/exoplayer2/f/j;->IE:J

    :cond_ac
    const/4 v6, -0x3

    if-ne v5, v6, :cond_b0

    return v1

    :cond_b0
    const/4 v6, -0x5

    if-ne v5, v6, :cond_c2

    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->Ix:I

    if-ne v0, v3, :cond_be

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/c/g;->clear()V

    iput v2, p0, Lcom/applovin/exoplayer2/f/j;->Ix:I

    :cond_be
    invoke-virtual {p0, v4}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/w;)Lcom/applovin/exoplayer2/c/h;

    return v2

    :cond_c2
    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/c/a;->gY()Z

    move-result v4

    if-eqz v4, :cond_106

    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->Ix:I

    if-ne v0, v3, :cond_d5

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/c/g;->clear()V

    iput v2, p0, Lcom/applovin/exoplayer2/f/j;->Ix:I

    :cond_d5
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->IF:Z

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->IA:Z

    if-nez v0, :cond_df

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->ks()V

    return v1

    :cond_df
    :try_start_df
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Im:Z

    if-eqz v0, :cond_e4

    goto :goto_f5

    :cond_e4
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->IB:Z

    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    iget v4, p0, Lcom/applovin/exoplayer2/f/j;->Ip:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-interface/range {v3 .. v9}, Lcom/applovin/exoplayer2/f/g;->a(IIIJI)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kk()V
    :try_end_f5
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_df .. :try_end_f5} :catch_f6

    :goto_f5
    return v1

    :catch_f6
    move-exception v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/applovin/exoplayer2/h;->r(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/exoplayer2/e;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;I)Lcom/applovin/exoplayer2/p;

    move-result-object v0

    throw v0

    :cond_106
    iget-boolean v4, p0, Lcom/applovin/exoplayer2/f/j;->IA:Z

    if-nez v4, :cond_11e

    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/c/a;->gZ()Z

    move-result v4

    if-nez v4, :cond_11e

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/c/g;->clear()V

    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->Ix:I

    if-ne v0, v3, :cond_11d

    iput v2, p0, Lcom/applovin/exoplayer2/f/j;->Ix:I

    :cond_11d
    return v2

    :cond_11e
    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/c/g;->hg()Z

    move-result v3

    if-eqz v3, :cond_12d

    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    iget-object v4, v4, Lcom/applovin/exoplayer2/c/g;->rG:Lcom/applovin/exoplayer2/c/c;

    invoke-virtual {v4, v0}, Lcom/applovin/exoplayer2/c/c;->bw(I)V

    :cond_12d
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Id:Z

    if-eqz v0, :cond_147

    if-nez v3, :cond_147

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    iget-object v0, v0, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/v;->m(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    iget-object v0, v0, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_145

    return v2

    :cond_145
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/f/j;->Id:Z

    :cond_147
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    iget-wide v4, v0, Lcom/applovin/exoplayer2/c/g;->rJ:J

    iget-object v6, p0, Lcom/applovin/exoplayer2/f/j;->In:Lcom/applovin/exoplayer2/f/e;

    if-eqz v6, :cond_165

    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    invoke-virtual {v6, v4, v0}, Lcom/applovin/exoplayer2/f/e;->a(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/c/g;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/applovin/exoplayer2/f/j;->ID:J

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->In:Lcom/applovin/exoplayer2/f/e;

    iget-object v8, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    invoke-virtual {v0, v8}, Lcom/applovin/exoplayer2/f/e;->k(Lcom/applovin/exoplayer2/v;)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/applovin/exoplayer2/f/j;->ID:J

    :cond_165
    move-wide v12, v4

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/c/a;->gX()Z

    move-result v0

    if-eqz v0, :cond_177

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HH:Ljava/util/ArrayList;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_177
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->IH:Z

    if-eqz v0, :cond_184

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HG:Lcom/applovin/exoplayer2/l/af;

    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    invoke-virtual {v0, v12, v13, v4}, Lcom/applovin/exoplayer2/l/af;->a(JLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/f/j;->IH:Z

    :cond_184
    iget-wide v4, p0, Lcom/applovin/exoplayer2/f/j;->ID:J

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/applovin/exoplayer2/f/j;->ID:J

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/c/g;->hh()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/c/a;->ha()Z

    move-result v0

    if-eqz v0, :cond_19e

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/f/j;->f(Lcom/applovin/exoplayer2/c/g;)V

    :cond_19e
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/c/g;)V

    if-eqz v3, :cond_1b3

    :try_start_1a5
    iget-object v8, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    iget v9, p0, Lcom/applovin/exoplayer2/f/j;->Ip:I

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    iget-object v11, v0, Lcom/applovin/exoplayer2/c/g;->rG:Lcom/applovin/exoplayer2/c/c;

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lcom/applovin/exoplayer2/f/g;->a(IILcom/applovin/exoplayer2/c/c;JI)V

    goto :goto_1c4

    :cond_1b3
    iget-object v8, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    iget v9, p0, Lcom/applovin/exoplayer2/f/j;->Ip:I

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HD:Lcom/applovin/exoplayer2/c/g;

    iget-object v0, v0, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lcom/applovin/exoplayer2/f/g;->a(IIIJI)V
    :try_end_1c4
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1a5 .. :try_end_1c4} :catch_1d3

    :goto_1c4
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kk()V

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->IA:Z

    iput v1, p0, Lcom/applovin/exoplayer2/f/j;->Ix:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->IL:Lcom/applovin/exoplayer2/c/e;

    iget v1, v0, Lcom/applovin/exoplayer2/c/e;->rx:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/applovin/exoplayer2/c/e;->rx:I

    return v2

    :catch_1d3
    move-exception v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/applovin/exoplayer2/h;->r(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/exoplayer2/e;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;I)Lcom/applovin/exoplayer2/p;

    move-result-object v0

    throw v0

    :catch_1e3
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/f/j;->i(Ljava/lang/Exception;)V

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/f/j;->cU(I)Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kg()V

    return v2

    :cond_1ee
    :goto_1ee
    return v1
.end method

.method private ko()Z
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->IA:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    iput v1, p0, Lcom/applovin/exoplayer2/f/j;->Iy:I

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Ie:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Ig:Z

    if-eqz v0, :cond_10

    goto :goto_13

    :cond_10
    iput v1, p0, Lcom/applovin/exoplayer2/f/j;->Iz:I

    goto :goto_18

    :cond_13
    :goto_13
    const/4 v0, 0x3

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->Iz:I

    const/4 v0, 0x0

    return v0

    :cond_18
    :goto_18
    return v1
.end method

.method private kp()Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->IA:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    iput v1, p0, Lcom/applovin/exoplayer2/f/j;->Iy:I

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Ie:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Ig:Z

    if-eqz v0, :cond_10

    goto :goto_14

    :cond_10
    const/4 v0, 0x2

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->Iz:I

    goto :goto_1c

    :cond_14
    :goto_14
    const/4 v0, 0x3

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->Iz:I

    const/4 v0, 0x0

    return v0

    :cond_19
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kw()V

    :goto_1c
    return v1
.end method

.method private kq()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->IA:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->Iy:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->Iz:I

    goto :goto_e

    :cond_b
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kv()V

    :goto_e
    return-void
.end method

.method private kr()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->IC:Z

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    invoke-interface {v1}, Lcom/applovin/exoplayer2/f/g;->jE()Landroid/media/MediaFormat;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/f/j;->Ic:I

    if-eqz v2, :cond_22

    const-string v2, "width"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_22

    const-string v2, "height"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_22

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Il:Z

    return-void

    :cond_22
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->Ij:Z

    if-eqz v2, :cond_2b

    const-string v2, "channel-count"

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2b
    iput-object v1, p0, Lcom/applovin/exoplayer2/f/j;->HX:Landroid/media/MediaFormat;

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->HY:Z

    return-void
.end method

.method private ks()V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->Iz:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/f/j;->IG:Z

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->eC()V

    goto :goto_1f

    :cond_11
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kv()V

    goto :goto_1f

    :cond_15
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kg()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kw()V

    goto :goto_1f

    :cond_1c
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kg()V

    :goto_1f
    return-void
.end method

.method private kv()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->kd()V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->jX()V

    return-void
.end method

.method private kw()V
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HP:Landroid/media/MediaCrypto;

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->HO:Lcom/applovin/exoplayer2/d/f;

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/f/j;->e(Lcom/applovin/exoplayer2/d/f;)Lcom/applovin/exoplayer2/d/n;

    move-result-object v1

    iget-object v1, v1, Lcom/applovin/exoplayer2/d/n;->su:[B

    invoke-virtual {v0, v1}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_d
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_d} :catch_18

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HO:Lcom/applovin/exoplayer2/d/f;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/j;->d(Lcom/applovin/exoplayer2/d/f;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->Iy:I

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->Iz:I

    return-void

    :catch_18
    move-exception v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    const/16 v2, 0x1776

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/exoplayer2/e;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;I)Lcom/applovin/exoplayer2/p;

    move-result-object v0

    throw v0
.end method

.method private kx()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->IF:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->ae()Lcom/applovin/exoplayer2/w;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->HE:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/c/g;->clear()V

    :cond_10
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->HE:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/c/g;->clear()V

    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->HE:Lcom/applovin/exoplayer2/c/g;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/applovin/exoplayer2/e;->a(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;I)I

    move-result v2

    const/4 v4, -0x5

    if-eq v2, v4, :cond_5d

    const/4 v4, -0x4

    if-eq v2, v4, :cond_2c

    const/4 v0, -0x3

    if-ne v2, v0, :cond_26

    return-void

    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2c
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->HE:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/c/a;->gY()Z

    move-result v2

    if-eqz v2, :cond_37

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/f/j;->IF:Z

    return-void

    :cond_37
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->IH:Z

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/v;

    iput-object v2, p0, Lcom/applovin/exoplayer2/f/j;->HM:Lcom/applovin/exoplayer2/v;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/v;Landroid/media/MediaFormat;)V

    iput-boolean v3, p0, Lcom/applovin/exoplayer2/f/j;->IH:Z

    :cond_4b
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->HE:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/c/g;->hh()V

    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->HF:Lcom/applovin/exoplayer2/f/d;

    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j;->HE:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/f/d;->d(Lcom/applovin/exoplayer2/c/g;)Z

    move-result v2

    if-nez v2, :cond_10

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/f/j;->Iu:Z

    return-void

    :cond_5d
    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/w;)Lcom/applovin/exoplayer2/c/h;

    return-void
.end method

.method private o(Lcom/applovin/exoplayer2/v;)V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kc()V

    iget-object p1, p1, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_24

    const-string v0, "audio/mpeg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "audio/opus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->HF:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/f/d;->cQ(I)V

    goto :goto_2b

    :cond_24
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->HF:Lcom/applovin/exoplayer2/f/d;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/f/d;->cQ(I)V

    :goto_2b
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/f/j;->It:Z

    return-void
.end method

.method private p(Lcom/applovin/exoplayer2/v;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    if-eqz v0, :cond_51

    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->Iz:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_51

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->P()I

    move-result v0

    if-nez v0, :cond_18

    goto :goto_51

    :cond_18
    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->HU:F

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->af()[Lcom/applovin/exoplayer2/v;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v2}, Lcom/applovin/exoplayer2/f/j;->a(FLcom/applovin/exoplayer2/v;[Lcom/applovin/exoplayer2/v;)F

    move-result p1

    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->HZ:F

    cmpl-float v2, v0, p1

    if-nez v2, :cond_29

    return v1

    :cond_29
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, p1, v2

    if-nez v3, :cond_34

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kq()V

    const/4 p1, 0x0

    return p1

    :cond_34
    cmpl-float v0, v0, v2

    if-nez v0, :cond_40

    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->HB:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3f

    goto :goto_40

    :cond_3f
    return v1

    :cond_40
    :goto_40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    invoke-interface {v2, v0}, Lcom/applovin/exoplayer2/f/g;->u(Landroid/os/Bundle;)V

    iput p1, p0, Lcom/applovin/exoplayer2/f/j;->HZ:F

    :cond_51
    :goto_51
    return v1
.end method

.method protected static q(Lcom/applovin/exoplayer2/v;)Z
    .registers 2

    iget p0, p0, Lcom/applovin/exoplayer2/v;->dR:I

    if-eqz p0, :cond_a

    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 p0, 0x1

    :goto_b
    return p0
.end method

.method private t(JJ)Z
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->kj()Z

    move-result v0

    const/16 v16, 0x1

    const/4 v14, 0x0

    if-nez v0, :cond_c2

    iget-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->Ih:Z

    if-eqz v0, :cond_28

    iget-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->IB:Z

    if-eqz v0, :cond_28

    :try_start_13
    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    iget-object v1, v15, Lcom/applovin/exoplayer2/f/j;->HI:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/f/g;->a(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_1b} :catch_1c

    goto :goto_30

    :catch_1c
    nop

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->ks()V

    iget-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->IG:Z

    if-eqz v0, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->kd()V

    :cond_27
    return v14

    :cond_28
    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    iget-object v1, v15, Lcom/applovin/exoplayer2/f/j;->HI:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/f/g;->a(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    :goto_30
    if-gez v0, :cond_4a

    const/4 v1, -0x2

    if-ne v0, v1, :cond_39

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->kr()V

    return v16

    :cond_39
    iget-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->Im:Z

    if-eqz v0, :cond_49

    iget-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->IF:Z

    if-nez v0, :cond_46

    iget v0, v15, Lcom/applovin/exoplayer2/f/j;->Iy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_49

    :cond_46
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->ks()V

    :cond_49
    return v14

    :cond_4a
    iget-boolean v1, v15, Lcom/applovin/exoplayer2/f/j;->Il:Z

    if-eqz v1, :cond_56

    iput-boolean v14, v15, Lcom/applovin/exoplayer2/f/j;->Il:Z

    iget-object v1, v15, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    invoke-interface {v1, v0, v14}, Lcom/applovin/exoplayer2/f/g;->l(IZ)V

    return v16

    :cond_56
    iget-object v1, v15, Lcom/applovin/exoplayer2/f/j;->HI:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_66

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_66

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->ks()V

    return v14

    :cond_66
    iput v0, v15, Lcom/applovin/exoplayer2/f/j;->Iq:I

    iget-object v1, v15, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    invoke-interface {v1, v0}, Lcom/applovin/exoplayer2/f/g;->cI(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v15, Lcom/applovin/exoplayer2/f/j;->kT:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_85

    iget-object v1, v15, Lcom/applovin/exoplayer2/f/j;->HI:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->kT:Ljava/nio/ByteBuffer;

    iget-object v1, v15, Lcom/applovin/exoplayer2/f/j;->HI:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_85
    iget-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->Ii:Z

    if-eqz v0, :cond_a6

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->HI:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_a6

    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a6

    iget-wide v1, v15, Lcom/applovin/exoplayer2/f/j;->ID:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_a6

    iput-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_a6
    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->HI:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v15, v0, v1}, Lcom/applovin/exoplayer2/f/j;->aO(J)Z

    move-result v0

    iput-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->Ir:Z

    iget-wide v0, v15, Lcom/applovin/exoplayer2/f/j;->IE:J

    iget-object v2, v15, Lcom/applovin/exoplayer2/f/j;->HI:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_bc

    const/4 v0, 0x1

    goto :goto_bd

    :cond_bc
    const/4 v0, 0x0

    :goto_bd
    iput-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->Is:Z

    invoke-virtual {v15, v2, v3}, Lcom/applovin/exoplayer2/f/j;->aL(J)V

    :cond_c2
    iget-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->Ih:Z

    if-eqz v0, :cond_fd

    iget-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->IB:Z

    if-eqz v0, :cond_fd

    :try_start_ca
    iget-object v5, v15, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    iget-object v6, v15, Lcom/applovin/exoplayer2/f/j;->kT:Ljava/nio/ByteBuffer;

    iget v7, v15, Lcom/applovin/exoplayer2/f/j;->Iq:I

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->HI:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x1

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v15, Lcom/applovin/exoplayer2/f/j;->Ir:Z

    iget-boolean v13, v15, Lcom/applovin/exoplayer2/f/j;->Is:Z

    iget-object v3, v15, Lcom/applovin/exoplayer2/f/j;->HM:Lcom/applovin/exoplayer2/v;
    :try_end_dd
    .catch Ljava/lang/IllegalStateException; {:try_start_ca .. :try_end_dd} :catch_f0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v17, v3

    move-wide/from16 v3, p3

    const/16 v18, 0x0

    move-object/from16 v14, v17

    :try_start_e9
    invoke-virtual/range {v0 .. v14}, Lcom/applovin/exoplayer2/f/j;->a(JJLcom/applovin/exoplayer2/f/g;Ljava/nio/ByteBuffer;IIIJZZLcom/applovin/exoplayer2/v;)Z

    move-result v0
    :try_end_ed
    .catch Ljava/lang/IllegalStateException; {:try_start_e9 .. :try_end_ed} :catch_ee

    goto :goto_11c

    :catch_ee
    nop

    goto :goto_f2

    :catch_f0
    const/16 v18, 0x0

    :goto_f2
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->ks()V

    iget-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->IG:Z

    if-eqz v0, :cond_fc

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->kd()V

    :cond_fc
    return v18

    :cond_fd
    const/16 v18, 0x0

    iget-object v5, v15, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    iget-object v6, v15, Lcom/applovin/exoplayer2/f/j;->kT:Ljava/nio/ByteBuffer;

    iget v7, v15, Lcom/applovin/exoplayer2/f/j;->Iq:I

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->HI:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x1

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v15, Lcom/applovin/exoplayer2/f/j;->Ir:Z

    iget-boolean v13, v15, Lcom/applovin/exoplayer2/f/j;->Is:Z

    iget-object v14, v15, Lcom/applovin/exoplayer2/f/j;->HM:Lcom/applovin/exoplayer2/v;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v14}, Lcom/applovin/exoplayer2/f/j;->a(JJLcom/applovin/exoplayer2/f/g;Ljava/nio/ByteBuffer;IIIJZZLcom/applovin/exoplayer2/v;)Z

    move-result v0

    :goto_11c
    if-eqz v0, :cond_139

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->HI:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v15, v0, v1}, Lcom/applovin/exoplayer2/f/j;->aN(J)V

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->HI:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_12f

    const/4 v14, 0x1

    goto :goto_130

    :cond_12f
    const/4 v14, 0x0

    :goto_130
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->kl()V

    if-nez v14, :cond_136

    return v16

    :cond_136
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->ks()V

    :cond_139
    return v18
.end method

.method private u(JJ)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    move-object/from16 v15, p0

    iget-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->IG:Z

    const/4 v14, 0x1

    xor-int/2addr v0, v14

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->HF:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/f/d;->jS()Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_55

    const/4 v5, 0x0

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->HF:Lcom/applovin/exoplayer2/f/d;

    iget-object v6, v0, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    iget v7, v15, Lcom/applovin/exoplayer2/f/j;->Iq:I

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/f/d;->iI()I

    move-result v9

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->HF:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/f/d;->jQ()J

    move-result-wide v10

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->HF:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/c/a;->gX()Z

    move-result v12

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->HF:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/c/a;->gY()Z

    move-result v16

    iget-object v3, v15, Lcom/applovin/exoplayer2/f/j;->HM:Lcom/applovin/exoplayer2/v;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v17, v3

    move-wide/from16 v3, p3

    move/from16 v13, v16

    move-object/from16 v14, v17

    invoke-virtual/range {v0 .. v14}, Lcom/applovin/exoplayer2/f/j;->a(JJLcom/applovin/exoplayer2/f/g;Ljava/nio/ByteBuffer;IIIJZZLcom/applovin/exoplayer2/v;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->HF:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/f/d;->jR()J

    move-result-wide v0

    invoke-virtual {v15, v0, v1}, Lcom/applovin/exoplayer2/f/j;->aN(J)V

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->HF:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/f/d;->clear()V

    goto :goto_55

    :cond_53
    const/4 v0, 0x0

    return v0

    :cond_55
    :goto_55
    const/4 v0, 0x0

    iget-boolean v1, v15, Lcom/applovin/exoplayer2/f/j;->IF:Z

    if-eqz v1, :cond_5e

    const/4 v1, 0x1

    iput-boolean v1, v15, Lcom/applovin/exoplayer2/f/j;->IG:Z

    return v0

    :cond_5e
    const/4 v1, 0x1

    iget-boolean v2, v15, Lcom/applovin/exoplayer2/f/j;->Iu:Z

    if-eqz v2, :cond_70

    iget-object v2, v15, Lcom/applovin/exoplayer2/f/j;->HF:Lcom/applovin/exoplayer2/f/d;

    iget-object v3, v15, Lcom/applovin/exoplayer2/f/j;->HE:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/f/d;->d(Lcom/applovin/exoplayer2/c/g;)Z

    move-result v2

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iput-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->Iu:Z

    :cond_70
    iget-boolean v2, v15, Lcom/applovin/exoplayer2/f/j;->Iv:Z

    if-eqz v2, :cond_8a

    iget-object v2, v15, Lcom/applovin/exoplayer2/f/j;->HF:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/f/d;->jS()Z

    move-result v2

    if-eqz v2, :cond_7d

    return v1

    :cond_7d
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->kc()V

    iput-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->Iv:Z

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->jX()V

    iget-boolean v2, v15, Lcom/applovin/exoplayer2/f/j;->It:Z

    if-nez v2, :cond_8a

    return v0

    :cond_8a
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->kx()V

    iget-object v2, v15, Lcom/applovin/exoplayer2/f/j;->HF:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/f/d;->jS()Z

    move-result v2

    if-eqz v2, :cond_9a

    iget-object v2, v15, Lcom/applovin/exoplayer2/f/j;->HF:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/c/g;->hh()V

    :cond_9a
    iget-object v2, v15, Lcom/applovin/exoplayer2/f/j;->HF:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/f/d;->jS()Z

    move-result v2

    if-nez v2, :cond_ad

    iget-boolean v2, v15, Lcom/applovin/exoplayer2/f/j;->IF:Z

    if-nez v2, :cond_ad

    iget-boolean v2, v15, Lcom/applovin/exoplayer2/f/j;->Iv:Z

    if-eqz v2, :cond_ab

    goto :goto_ad

    :cond_ab
    const/4 v14, 0x0

    goto :goto_ae

    :cond_ad
    :goto_ad
    const/4 v14, 0x1

    :goto_ae
    return v14
.end method


# virtual methods
.method public M(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/f/j;->IJ:Z

    return-void
.end method

.method public N(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/f/j;->bi:Z

    return-void
.end method

.method public O(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/f/j;->bj:Z

    return-void
.end method

.method public final Z()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method protected a(FLcom/applovin/exoplayer2/v;[Lcom/applovin/exoplayer2/v;)F
    .registers 4

    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method protected abstract a(Lcom/applovin/exoplayer2/f/k;Lcom/applovin/exoplayer2/v;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/f/l$b;
        }
    .end annotation
.end method

.method protected a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/c/h;
    .registers 11

    new-instance v6, Lcom/applovin/exoplayer2/c/h;

    iget-object v1, p1, Lcom/applovin/exoplayer2/f/i;->name:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/applovin/exoplayer2/c/h;-><init>(Ljava/lang/String;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/v;II)V

    return-object v6
.end method

.method protected a(Lcom/applovin/exoplayer2/w;)Lcom/applovin/exoplayer2/c/h;
    .registers 13
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->IH:Z

    iget-object v1, p1, Lcom/applovin/exoplayer2/w;->dU:Lcom/applovin/exoplayer2/v;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/applovin/exoplayer2/v;

    iget-object v1, v5, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    if-eqz v1, :cond_ec

    iget-object p1, p1, Lcom/applovin/exoplayer2/w;->dT:Lcom/applovin/exoplayer2/d/f;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/f/j;->c(Lcom/applovin/exoplayer2/d/f;)V

    iput-object v5, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/f/j;->It:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Iv:Z

    return-object v1

    :cond_1f
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    if-nez p1, :cond_29

    iput-object v1, p0, Lcom/applovin/exoplayer2/f/j;->Ia:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->jX()V

    return-object v1

    :cond_29
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->Hk:Lcom/applovin/exoplayer2/f/i;

    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->HW:Lcom/applovin/exoplayer2/v;

    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->HN:Lcom/applovin/exoplayer2/d/f;

    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j;->HO:Lcom/applovin/exoplayer2/d/f;

    invoke-direct {p0, v1, v5, v2, v3}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/d/f;Lcom/applovin/exoplayer2/d/f;)Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kq()V

    new-instance p1, Lcom/applovin/exoplayer2/c/h;

    iget-object v3, v1, Lcom/applovin/exoplayer2/f/i;->name:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x80

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/applovin/exoplayer2/c/h;-><init>(Ljava/lang/String;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/v;II)V

    return-object p1

    :cond_46
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->HO:Lcom/applovin/exoplayer2/d/f;

    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j;->HN:Lcom/applovin/exoplayer2/d/f;

    const/4 v6, 0x0

    if-eq v2, v3, :cond_4f

    const/4 v2, 0x1

    goto :goto_50

    :cond_4f
    const/4 v2, 0x0

    :goto_50
    if-eqz v2, :cond_5b

    sget v3, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v7, 0x17

    if-lt v3, v7, :cond_59

    goto :goto_5b

    :cond_59
    const/4 v3, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 v3, 0x1

    :goto_5c
    invoke-static {v3}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    invoke-virtual {p0, v1, v4, v5}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/c/h;

    move-result-object v3

    iget v7, v3, Lcom/applovin/exoplayer2/c/h;->pZ:I

    const/4 v8, 0x3

    const/16 v9, 0x10

    const/4 v10, 0x2

    if-eqz v7, :cond_d1

    if-eq v7, v0, :cond_b5

    if-eq v7, v10, :cond_89

    if-ne v7, v8, :cond_83

    invoke-direct {p0, v5}, Lcom/applovin/exoplayer2/f/j;->p(Lcom/applovin/exoplayer2/v;)Z

    move-result v0

    if-nez v0, :cond_78

    goto :goto_bb

    :cond_78
    iput-object v5, p0, Lcom/applovin/exoplayer2/f/j;->HW:Lcom/applovin/exoplayer2/v;

    if-eqz v2, :cond_d4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kp()Z

    move-result v0

    if-nez v0, :cond_d4

    goto :goto_cf

    :cond_83
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_89
    invoke-direct {p0, v5}, Lcom/applovin/exoplayer2/f/j;->p(Lcom/applovin/exoplayer2/v;)Z

    move-result v7

    if-nez v7, :cond_90

    goto :goto_bb

    :cond_90
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Iw:Z

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->Ix:I

    iget v7, p0, Lcom/applovin/exoplayer2/f/j;->Ic:I

    if-eq v7, v10, :cond_a8

    if-ne v7, v0, :cond_a7

    iget v7, v5, Lcom/applovin/exoplayer2/v;->dE:I

    iget v9, v4, Lcom/applovin/exoplayer2/v;->dE:I

    if-ne v7, v9, :cond_a7

    iget v7, v5, Lcom/applovin/exoplayer2/v;->height:I

    iget v9, v4, Lcom/applovin/exoplayer2/v;->height:I

    if-ne v7, v9, :cond_a7

    goto :goto_a8

    :cond_a7
    const/4 v0, 0x0

    :cond_a8
    :goto_a8
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Ik:Z

    iput-object v5, p0, Lcom/applovin/exoplayer2/f/j;->HW:Lcom/applovin/exoplayer2/v;

    if-eqz v2, :cond_d4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kp()Z

    move-result v0

    if-nez v0, :cond_d4

    goto :goto_cf

    :cond_b5
    invoke-direct {p0, v5}, Lcom/applovin/exoplayer2/f/j;->p(Lcom/applovin/exoplayer2/v;)Z

    move-result v0

    if-nez v0, :cond_be

    :goto_bb
    const/16 v7, 0x10

    goto :goto_d5

    :cond_be
    iput-object v5, p0, Lcom/applovin/exoplayer2/f/j;->HW:Lcom/applovin/exoplayer2/v;

    if-eqz v2, :cond_c9

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kp()Z

    move-result v0

    if-nez v0, :cond_d4

    goto :goto_cf

    :cond_c9
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->ko()Z

    move-result v0

    if-nez v0, :cond_d4

    :goto_cf
    const/4 v7, 0x2

    goto :goto_d5

    :cond_d1
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kq()V

    :cond_d4
    const/4 v7, 0x0

    :goto_d5
    iget v0, v3, Lcom/applovin/exoplayer2/c/h;->pZ:I

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    if-ne v0, p1, :cond_e1

    iget p1, p0, Lcom/applovin/exoplayer2/f/j;->Iz:I

    if-ne p1, v8, :cond_eb

    :cond_e1
    new-instance p1, Lcom/applovin/exoplayer2/c/h;

    iget-object v3, v1, Lcom/applovin/exoplayer2/f/i;->name:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/applovin/exoplayer2/c/h;-><init>(Ljava/lang/String;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/v;II)V

    return-object p1

    :cond_eb
    return-object v3

    :cond_ec
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/16 v0, 0xfa5

    invoke-virtual {p0, p1, v5, v0}, Lcom/applovin/exoplayer2/e;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;I)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    throw p1
.end method

.method protected abstract a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;Landroid/media/MediaCrypto;F)Lcom/applovin/exoplayer2/f/g$a;
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method protected a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/f/i;)Lcom/applovin/exoplayer2/f/h;
    .registers 4
    .param p2    # Lcom/applovin/exoplayer2/f/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/applovin/exoplayer2/f/h;

    invoke-direct {v0, p1, p2}, Lcom/applovin/exoplayer2/f/h;-><init>(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/f/i;)V

    return-object v0
.end method

.method protected abstract a(Lcom/applovin/exoplayer2/f/k;Lcom/applovin/exoplayer2/v;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/f/k;",
            "Lcom/applovin/exoplayer2/v;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/f/i;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/f/l$b;
        }
    .end annotation
.end method

.method public a(FF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iput p1, p0, Lcom/applovin/exoplayer2/f/j;->HS:F

    iput p2, p0, Lcom/applovin/exoplayer2/f/j;->HU:F

    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->HW:Lcom/applovin/exoplayer2/v;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/f/j;->p(Lcom/applovin/exoplayer2/v;)Z

    return-void
.end method

.method protected a(JZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/f/j;->IF:Z

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/f/j;->IG:Z

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/f/j;->II:Z

    iget-boolean p2, p0, Lcom/applovin/exoplayer2/f/j;->It:Z

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/applovin/exoplayer2/f/j;->HF:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/f/d;->clear()V

    iget-object p2, p0, Lcom/applovin/exoplayer2/f/j;->HE:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/c/g;->clear()V

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/f/j;->Iu:Z

    goto :goto_1b

    :cond_18
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->ke()Z

    :goto_1b
    iget-object p2, p0, Lcom/applovin/exoplayer2/f/j;->HG:Lcom/applovin/exoplayer2/l/af;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/af;->size()I

    move-result p2

    const/4 p3, 0x1

    if-lez p2, :cond_26

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/f/j;->IH:Z

    :cond_26
    iget-object p2, p0, Lcom/applovin/exoplayer2/f/j;->HG:Lcom/applovin/exoplayer2/l/af;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/af;->clear()V

    iget p2, p0, Lcom/applovin/exoplayer2/f/j;->IO:I

    if-eqz p2, :cond_40

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HK:[J

    add-int/lit8 v1, p2, -0x1

    aget-wide v1, v0, v1

    iput-wide v1, p0, Lcom/applovin/exoplayer2/f/j;->IN:J

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HJ:[J

    sub-int/2addr p2, p3

    aget-wide p2, v0, p2

    iput-wide p2, p0, Lcom/applovin/exoplayer2/f/j;->IM:J

    iput p1, p0, Lcom/applovin/exoplayer2/f/j;->IO:I

    :cond_40
    return-void
.end method

.method protected a(Lcom/applovin/exoplayer2/c/g;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    return-void
.end method

.method protected a(Lcom/applovin/exoplayer2/v;Landroid/media/MediaFormat;)V
    .registers 3
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    return-void
.end method

.method protected a(ZZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    new-instance p1, Lcom/applovin/exoplayer2/c/e;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/c/e;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->IL:Lcom/applovin/exoplayer2/c/e;

    return-void
.end method

.method protected a([Lcom/applovin/exoplayer2/v;JJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-wide v0, p0, Lcom/applovin/exoplayer2/f/j;->IN:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p1, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1c

    iget-wide v0, p0, Lcom/applovin/exoplayer2/f/j;->IM:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iput-wide p2, p0, Lcom/applovin/exoplayer2/f/j;->IM:J

    iput-wide p4, p0, Lcom/applovin/exoplayer2/f/j;->IN:J

    goto :goto_59

    :cond_1c
    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->IO:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->HK:[J

    array-length v1, v1

    if-ne v0, v1, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many stream changes, so dropping offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->HK:[J

    iget v2, p0, Lcom/applovin/exoplayer2/f/j;->IO:I

    sub-int/2addr v2, p1

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecRenderer"

    invoke-static {v1, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    :cond_41
    add-int/2addr v0, p1

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->IO:I

    :goto_44
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HJ:[J

    iget v1, p0, Lcom/applovin/exoplayer2/f/j;->IO:I

    add-int/lit8 v2, v1, -0x1

    aput-wide p2, v0, v2

    iget-object p2, p0, Lcom/applovin/exoplayer2/f/j;->HK:[J

    add-int/lit8 p3, v1, -0x1

    aput-wide p4, p2, p3

    iget-object p2, p0, Lcom/applovin/exoplayer2/f/j;->HL:[J

    sub-int/2addr v1, p1

    iget-wide p3, p0, Lcom/applovin/exoplayer2/f/j;->ID:J

    aput-wide p3, p2, v1

    :goto_59
    return-void
.end method

.method protected abstract a(JJLcom/applovin/exoplayer2/f/g;Ljava/nio/ByteBuffer;IIIJZZLcom/applovin/exoplayer2/v;)Z
    .param p5    # Lcom/applovin/exoplayer2/f/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation
.end method

.method protected a(Lcom/applovin/exoplayer2/f/i;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method protected final aL(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HG:Lcom/applovin/exoplayer2/l/af;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/l/af;->bp(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/v;

    if-nez p1, :cond_16

    iget-boolean p2, p0, Lcom/applovin/exoplayer2/f/j;->HY:Z

    if-eqz p2, :cond_16

    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->HG:Lcom/applovin/exoplayer2/l/af;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/af;->pollFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/v;

    :cond_16
    const/4 p2, 0x0

    if-eqz p1, :cond_1d

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->HM:Lcom/applovin/exoplayer2/v;

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    if-nez p1, :cond_28

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/f/j;->HY:Z

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->HM:Lcom/applovin/exoplayer2/v;

    if-eqz p1, :cond_31

    :cond_28
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->HM:Lcom/applovin/exoplayer2/v;

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HX:Landroid/media/MediaFormat;

    invoke-virtual {p0, p1, v0}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/v;Landroid/media/MediaFormat;)V

    iput-boolean p2, p0, Lcom/applovin/exoplayer2/f/j;->HY:Z

    :cond_31
    return-void
.end method

.method protected aN(J)V
    .registers 9
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    :goto_0
    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->IO:I

    if-eqz v0, :cond_33

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->HL:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_33

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->HJ:[J

    aget-wide v3, v1, v2

    iput-wide v3, p0, Lcom/applovin/exoplayer2/f/j;->IM:J

    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j;->HK:[J

    aget-wide v4, v3, v2

    iput-wide v4, p0, Lcom/applovin/exoplayer2/f/j;->IN:J

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->IO:I

    const/4 v3, 0x1

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HK:[J

    iget v1, p0, Lcom/applovin/exoplayer2/f/j;->IO:I

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HL:[J

    iget v1, p0, Lcom/applovin/exoplayer2/f/j;->IO:I

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->eB()V

    goto :goto_0

    :cond_33
    return-void
.end method

.method protected aa()V
    .registers 1

    return-void
.end method

.method protected ab()V
    .registers 1

    return-void
.end method

.method protected ac()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/f/j;->IM:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/f/j;->IN:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->IO:I

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->kf()Z

    return-void
.end method

.method protected ad()V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kc()V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->kd()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/j;->c(Lcom/applovin/exoplayer2/d/f;)V

    return-void

    :catchall_b
    move-exception v1

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/j;->c(Lcom/applovin/exoplayer2/d/f;)V

    throw v1
.end method

.method public final b(Lcom/applovin/exoplayer2/v;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->bg:Lcom/applovin/exoplayer2/f/k;

    invoke-virtual {p0, v0, p1}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/f/k;Lcom/applovin/exoplayer2/v;)I

    move-result p1
    :try_end_6
    .catch Lcom/applovin/exoplayer2/f/l$b; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception v0

    const/16 v1, 0xfa2

    invoke-virtual {p0, v0, p1, v1}, Lcom/applovin/exoplayer2/e;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;I)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    throw p1
.end method

.method protected final b(Lcom/applovin/exoplayer2/p;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->IK:Lcom/applovin/exoplayer2/p;

    return-void
.end method

.method public cR()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->IG:Z

    return v0
.end method

.method protected e(Ljava/lang/String;JJ)V
    .registers 6

    return-void
.end method

.method protected eB()V
    .registers 1

    return-void
.end method

.method protected eC()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    return-void
.end method

.method protected f(Lcom/applovin/exoplayer2/c/g;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    return-void
.end method

.method protected f(Lcom/applovin/exoplayer2/v;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public g(JJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->II:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/f/j;->II:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->ks()V

    :cond_a
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->IK:Lcom/applovin/exoplayer2/p;

    if-nez v0, :cond_a7

    const/4 v0, 0x1

    :try_start_f
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->IG:Z

    if-eqz v2, :cond_17

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->eC()V

    return-void

    :cond_17
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    if-nez v2, :cond_23

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/applovin/exoplayer2/f/j;->cU(I)Z

    move-result v2

    if-nez v2, :cond_23

    return-void

    :cond_23
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->jX()V

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->It:Z

    if-eqz v2, :cond_3a

    const-string v2, "bypassRender"

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/ah;->bg(Ljava/lang/String;)V

    :goto_2f
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/f/j;->u(JJ)Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_2f

    :cond_36
    invoke-static {}, Lcom/applovin/exoplayer2/l/ah;->pV()V

    goto :goto_73

    :cond_3a
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    if-eqz v2, :cond_65

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "drainAndFeed"

    invoke-static {v4}, Lcom/applovin/exoplayer2/l/ah;->bg(Ljava/lang/String;)V

    :goto_47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/f/j;->t(JJ)Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-direct {p0, v2, v3}, Lcom/applovin/exoplayer2/f/j;->aM(J)Z

    move-result v4

    if-eqz v4, :cond_54

    goto :goto_47

    :cond_54
    :goto_54
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->km()Z

    move-result p1

    if-eqz p1, :cond_61

    invoke-direct {p0, v2, v3}, Lcom/applovin/exoplayer2/f/j;->aM(J)Z

    move-result p1

    if-eqz p1, :cond_61

    goto :goto_54

    :cond_61
    invoke-static {}, Lcom/applovin/exoplayer2/l/ah;->pV()V

    goto :goto_73

    :cond_65
    iget-object p3, p0, Lcom/applovin/exoplayer2/f/j;->IL:Lcom/applovin/exoplayer2/c/e;

    iget p4, p3, Lcom/applovin/exoplayer2/c/e;->ry:I

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/e;->e(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p3, Lcom/applovin/exoplayer2/c/e;->ry:I

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/j;->cU(I)Z

    :goto_73
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->IL:Lcom/applovin/exoplayer2/c/e;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/e;->he()V
    :try_end_78
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_78} :catch_79

    return-void

    :catch_79
    move-exception p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/f/j;->b(Ljava/lang/IllegalStateException;)Z

    move-result p2

    if-eqz p2, :cond_a6

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/f/j;->i(Ljava/lang/Exception;)V

    sget p2, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_90

    invoke-static {p1}, Lcom/applovin/exoplayer2/f/j;->d(Ljava/lang/IllegalStateException;)Z

    move-result p2

    if-eqz p2, :cond_90

    const/4 v1, 0x1

    :cond_90
    if-eqz v1, :cond_95

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->kd()V

    :cond_95
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->kb()Lcom/applovin/exoplayer2/f/i;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/f/j;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/f/i;)Lcom/applovin/exoplayer2/f/h;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    const/16 p3, 0xfa3

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/applovin/exoplayer2/e;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;ZI)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    throw p1

    :cond_a6
    throw p1

    :cond_a7
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->IK:Lcom/applovin/exoplayer2/p;

    throw v0
.end method

.method protected i(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public isReady()Z
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->ai()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kj()Z

    move-result v0

    if-nez v0, :cond_25

    iget-wide v0, p0, Lcom/applovin/exoplayer2/f/j;->Io:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_27

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/exoplayer2/f/j;->Io:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_27

    :cond_25
    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0
.end method

.method protected final jX()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    if-nez v0, :cond_9c

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->It:Z

    if-nez v0, :cond_9c

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    if-nez v0, :cond_e

    goto/16 :goto_9c

    :cond_e
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->HO:Lcom/applovin/exoplayer2/d/f;

    if-nez v1, :cond_1e

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/f/j;->f(Lcom/applovin/exoplayer2/v;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/j;->o(Lcom/applovin/exoplayer2/v;)V

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HO:Lcom/applovin/exoplayer2/d/f;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/j;->d(Lcom/applovin/exoplayer2/d/f;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    iget-object v0, v0, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->HN:Lcom/applovin/exoplayer2/d/f;

    if-eqz v1, :cond_8a

    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->HP:Landroid/media/MediaCrypto;

    const/4 v3, 0x1

    if-nez v2, :cond_65

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/f/j;->e(Lcom/applovin/exoplayer2/d/f;)Lcom/applovin/exoplayer2/d/n;

    move-result-object v1

    if-nez v1, :cond_40

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HN:Lcom/applovin/exoplayer2/d/f;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/d/f;->ht()Lcom/applovin/exoplayer2/d/f$a;

    move-result-object v0

    if-eqz v0, :cond_3f

    goto :goto_65

    :cond_3f
    return-void

    :cond_40
    :try_start_40
    new-instance v2, Landroid/media/MediaCrypto;

    iget-object v4, v1, Lcom/applovin/exoplayer2/d/n;->ey:Ljava/util/UUID;

    iget-object v5, v1, Lcom/applovin/exoplayer2/d/n;->su:[B

    invoke-direct {v2, v4, v5}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v2, p0, Lcom/applovin/exoplayer2/f/j;->HP:Landroid/media/MediaCrypto;
    :try_end_4b
    .catch Landroid/media/MediaCryptoException; {:try_start_40 .. :try_end_4b} :catch_5b

    iget-boolean v1, v1, Lcom/applovin/exoplayer2/d/n;->tp:Z

    if-nez v1, :cond_57

    invoke-virtual {v2, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    const/4 v0, 0x1

    goto :goto_58

    :cond_57
    const/4 v0, 0x0

    :goto_58
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->HQ:Z

    goto :goto_65

    :catch_5b
    move-exception v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    const/16 v2, 0x1776

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/exoplayer2/e;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;I)Lcom/applovin/exoplayer2/p;

    move-result-object v0

    throw v0

    :cond_65
    :goto_65
    sget-boolean v0, Lcom/applovin/exoplayer2/d/n;->to:Z

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HN:Lcom/applovin/exoplayer2/d/f;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/d/f;->P()I

    move-result v0

    if-eq v0, v3, :cond_75

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8a

    return-void

    :cond_75
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HN:Lcom/applovin/exoplayer2/d/f;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/d/f;->ht()Lcom/applovin/exoplayer2/d/f$a;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/d/f$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    iget v2, v0, Lcom/applovin/exoplayer2/d/f$a;->errorCode:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/exoplayer2/e;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;I)Lcom/applovin/exoplayer2/p;

    move-result-object v0

    throw v0

    :cond_8a
    :try_start_8a
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HP:Landroid/media/MediaCrypto;

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/f/j;->HQ:Z

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/f/j;->a(Landroid/media/MediaCrypto;Z)V
    :try_end_91
    .catch Lcom/applovin/exoplayer2/f/j$a; {:try_start_8a .. :try_end_91} :catch_92

    return-void

    :catch_92
    move-exception v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->lS:Lcom/applovin/exoplayer2/v;

    const/16 v2, 0xfa1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/exoplayer2/e;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;I)Lcom/applovin/exoplayer2/p;

    move-result-object v0

    throw v0

    :cond_9c
    :goto_9c
    return-void
.end method

.method protected jY()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final jZ()Lcom/applovin/exoplayer2/f/g;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    return-object v0
.end method

.method protected final ka()Landroid/media/MediaFormat;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HX:Landroid/media/MediaFormat;

    return-object v0
.end method

.method protected final kb()Lcom/applovin/exoplayer2/f/i;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->Hk:Lcom/applovin/exoplayer2/f/i;

    return-object v0
.end method

.method protected kd()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    if-eqz v1, :cond_17

    invoke-interface {v1}, Lcom/applovin/exoplayer2/f/g;->release()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->IL:Lcom/applovin/exoplayer2/c/e;

    iget v2, v1, Lcom/applovin/exoplayer2/c/e;->rw:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/applovin/exoplayer2/c/e;->rw:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->Hk:Lcom/applovin/exoplayer2/f/i;

    iget-object v1, v1, Lcom/applovin/exoplayer2/f/i;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/f/j;->v(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_33

    :cond_17
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    :try_start_19
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->HP:Landroid/media/MediaCrypto;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_29

    :cond_20
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HP:Landroid/media/MediaCrypto;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/j;->d(Lcom/applovin/exoplayer2/d/f;)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->ki()V

    return-void

    :catchall_29
    move-exception v1

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HP:Landroid/media/MediaCrypto;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/j;->d(Lcom/applovin/exoplayer2/d/f;)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->ki()V

    throw v1

    :catchall_33
    move-exception v1

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    :try_start_36
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->HP:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_46

    :cond_3d
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HP:Landroid/media/MediaCrypto;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/j;->d(Lcom/applovin/exoplayer2/d/f;)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->ki()V

    throw v1

    :catchall_46
    move-exception v1

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HP:Landroid/media/MediaCrypto;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/j;->d(Lcom/applovin/exoplayer2/d/f;)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->ki()V

    throw v1
.end method

.method protected final ke()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->kf()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->jX()V

    :cond_9
    return v0
.end method

.method protected kf()Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HV:Lcom/applovin/exoplayer2/f/g;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->Iz:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_24

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Ie:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->If:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->IC:Z

    if-eqz v0, :cond_24

    :cond_17
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Ig:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->IB:Z

    if-eqz v0, :cond_20

    goto :goto_24

    :cond_20
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kg()V

    return v1

    :cond_24
    :goto_24
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->kd()V

    const/4 v0, 0x1

    return v0
.end method

.method protected kh()V
    .registers 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kk()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->kl()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/f/j;->Io:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->IB:Z

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->IA:Z

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->Ik:Z

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->Il:Z

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->Ir:Z

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->Is:Z

    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j;->HH:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-wide v0, p0, Lcom/applovin/exoplayer2/f/j;->ID:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/f/j;->IE:J

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->In:Lcom/applovin/exoplayer2/f/e;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/f/e;->Y()V

    :cond_2a
    iput v2, p0, Lcom/applovin/exoplayer2/f/j;->Iy:I

    iput v2, p0, Lcom/applovin/exoplayer2/f/j;->Iz:I

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Iw:Z

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->Ix:I

    return-void
.end method

.method protected ki()V
    .registers 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->kh()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->IK:Lcom/applovin/exoplayer2/p;

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->In:Lcom/applovin/exoplayer2/f/e;

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->Ia:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->Hk:Lcom/applovin/exoplayer2/f/i;

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HW:Lcom/applovin/exoplayer2/v;

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->HX:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->HY:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->IC:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/applovin/exoplayer2/f/j;->HZ:F

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->Ic:I

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Id:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Ie:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->If:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Ig:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Ih:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Ii:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Ij:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Im:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Iw:Z

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->Ix:I

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->HQ:Z

    return-void
.end method

.method protected kn()F
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->HS:F

    return v0
.end method

.method protected final kt()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->II:Z

    return-void
.end method

.method protected final ku()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/f/j;->IN:J

    return-wide v0
.end method

.method protected v(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

###### Class com.applovin.exoplayer2.f.j.a (com.applovin.exoplayer2.f.j$a)
.class public Lcom/applovin/exoplayer2/f/j$a;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/f/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final Hk:Lcom/applovin/exoplayer2/f/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final Hq:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final IP:Z

.field public final IQ:Lcom/applovin/exoplayer2/f/j$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final eg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/v;Ljava/lang/Throwable;ZI)V
    .registers 15
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decoder init failed: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    invoke-static {p4}, Lcom/applovin/exoplayer2/f/j$a;->cV(I)Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/applovin/exoplayer2/f/j$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/applovin/exoplayer2/f/i;Ljava/lang/String;Lcom/applovin/exoplayer2/f/j$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/exoplayer2/v;Ljava/lang/Throwable;ZLcom/applovin/exoplayer2/f/i;)V
    .registers 15
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decoder init failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p4, Lcom/applovin/exoplayer2/f/i;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    sget p1, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_28

    invoke-static {p2}, Lcom/applovin/exoplayer2/f/j$a;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    move-object v8, p1

    const/4 v9, 0x0

    move-object v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v9}, Lcom/applovin/exoplayer2/f/j$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/applovin/exoplayer2/f/i;Ljava/lang/String;Lcom/applovin/exoplayer2/f/j$a;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/applovin/exoplayer2/f/i;Ljava/lang/String;Lcom/applovin/exoplayer2/f/j$a;)V
    .registers 8
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/applovin/exoplayer2/f/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/applovin/exoplayer2/f/j$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lcom/applovin/exoplayer2/f/j$a;->eg:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/applovin/exoplayer2/f/j$a;->IP:Z

    iput-object p5, p0, Lcom/applovin/exoplayer2/f/j$a;->Hk:Lcom/applovin/exoplayer2/f/i;

    iput-object p6, p0, Lcom/applovin/exoplayer2/f/j$a;->Hq:Ljava/lang/String;

    iput-object p7, p0, Lcom/applovin/exoplayer2/f/j$a;->IQ:Lcom/applovin/exoplayer2/f/j$a;

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/f/j$a;)Lcom/applovin/exoplayer2/f/j$a;
    .registers 11
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    new-instance v8, Lcom/applovin/exoplayer2/f/j$a;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j$a;->eg:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/applovin/exoplayer2/f/j$a;->IP:Z

    iget-object v5, p0, Lcom/applovin/exoplayer2/f/j$a;->Hk:Lcom/applovin/exoplayer2/f/i;

    iget-object v6, p0, Lcom/applovin/exoplayer2/f/j$a;->Hq:Ljava/lang/String;

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/applovin/exoplayer2/f/j$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/applovin/exoplayer2/f/i;Ljava/lang/String;Lcom/applovin/exoplayer2/f/j$a;)V

    return-object v8
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/f/j$a;Lcom/applovin/exoplayer2/f/j$a;)Lcom/applovin/exoplayer2/f/j$a;
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/f/j$a;->a(Lcom/applovin/exoplayer2/f/j$a;)Lcom/applovin/exoplayer2/f/j$a;

    move-result-object p0

    return-object p0
.end method

.method private static cV(I)Ljava/lang/String;
    .registers 4

    if-gez p0, :cond_5

    const-string v0, "neg_"

    goto :goto_7

    :cond_5
    const-string v0, ""

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.applovin.exoplayer2.mediacodec.MediaCodecRenderer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static g(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method
