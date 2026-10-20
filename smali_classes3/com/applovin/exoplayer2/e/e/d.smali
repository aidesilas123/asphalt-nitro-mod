###### Class com.applovin.exoplayer2.e.e.d (com.applovin.exoplayer2.e.e.d)
.class public Lcom/applovin/exoplayer2/e/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/e/d$b;,
        Lcom/applovin/exoplayer2/e/e/d$c;,
        Lcom/applovin/exoplayer2/e/e/d$a;
    }
.end annotation


# static fields
.field public static final vq:Lcom/applovin/exoplayer2/e/l;

.field private static final wR:[B

.field private static final wS:[B

.field private static final wT:[B

.field private static final wU:Ljava/util/UUID;

.field private static final wV:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fH:J

.field private final uO:Lcom/applovin/exoplayer2/l/y;

.field private vG:Lcom/applovin/exoplayer2/e/j;

.field private final wL:Lcom/applovin/exoplayer2/e/e/f;

.field private final wW:Lcom/applovin/exoplayer2/e/e/c;

.field private final wX:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/applovin/exoplayer2/e/e/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private final wY:Z

.field private final wZ:Lcom/applovin/exoplayer2/l/y;

.field private final wm:Lcom/applovin/exoplayer2/l/y;

.field private final wn:Lcom/applovin/exoplayer2/l/y;

.field private xA:I

.field private xB:I

.field private xC:[I

.field private xD:I

.field private xE:I

.field private xF:I

.field private xG:I

.field private xH:Z

.field private xI:I

.field private xJ:I

.field private xK:I

.field private xL:Z

.field private xM:Z

.field private xN:Z

.field private xO:I

.field private xP:B

.field private xQ:Z

.field private final xa:Lcom/applovin/exoplayer2/l/y;

.field private final xb:Lcom/applovin/exoplayer2/l/y;

.field private final xc:Lcom/applovin/exoplayer2/l/y;

.field private final xd:Lcom/applovin/exoplayer2/l/y;

.field private final xe:Lcom/applovin/exoplayer2/l/y;

.field private final xf:Lcom/applovin/exoplayer2/l/y;

.field private xg:Ljava/nio/ByteBuffer;

.field private xh:J

.field private xi:J

.field private xj:J

.field private xk:J

.field private xl:Lcom/applovin/exoplayer2/e/e/d$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private xm:Z

.field private xn:I

.field private xo:J

.field private xp:Z

.field private xq:J

.field private xr:J

.field private xs:J

.field private xt:Lcom/applovin/exoplayer2/l/r;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private xu:Lcom/applovin/exoplayer2/l/r;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private xv:Z

.field private xw:Z

.field private xx:I

.field private xy:J

.field private xz:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    sget-object v0, Lcom/applovin/exoplayer2/e/e/g;->a:Lcom/applovin/exoplayer2/e/e/g;

    sput-object v0, Lcom/applovin/exoplayer2/e/e/d;->vq:Lcom/applovin/exoplayer2/e/l;

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_64

    sput-object v1, Lcom/applovin/exoplayer2/e/e/d;->wR:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/ai;->bk(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/applovin/exoplayer2/e/e/d;->wS:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_78

    sput-object v0, Lcom/applovin/exoplayer2/e/e/d;->wT:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/applovin/exoplayer2/e/e/d;->wU:Ljava/util/UUID;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-000"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-090"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-180"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-270"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/e/e/d;->wV:Ljava/util/Map;

    return-void

    :array_64
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_78
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/e/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/e/e/a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/e/e/a;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/e/e/d;-><init>(Lcom/applovin/exoplayer2/e/e/c;I)V

    return-void
.end method

.method constructor <init>(Lcom/applovin/exoplayer2/e/e/c;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xi:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/applovin/exoplayer2/e/e/d;->xj:J

    iput-wide v2, p0, Lcom/applovin/exoplayer2/e/e/d;->xk:J

    iput-wide v2, p0, Lcom/applovin/exoplayer2/e/e/d;->fH:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xq:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xr:J

    iput-wide v2, p0, Lcom/applovin/exoplayer2/e/e/d;->xs:J

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->wW:Lcom/applovin/exoplayer2/e/e/c;

    new-instance v0, Lcom/applovin/exoplayer2/e/e/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/exoplayer2/e/e/d$a;-><init>(Lcom/applovin/exoplayer2/e/e/d;Lcom/applovin/exoplayer2/e/e/d$1;)V

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/e/e/c;->a(Lcom/applovin/exoplayer2/e/e/b;)V

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-nez p2, :cond_29

    const/4 p2, 0x1

    goto :goto_2a

    :cond_29
    const/4 p2, 0x0

    :goto_2a
    iput-boolean p2, p0, Lcom/applovin/exoplayer2/e/e/d;->wY:Z

    new-instance p2, Lcom/applovin/exoplayer2/e/e/f;

    invoke-direct {p2}, Lcom/applovin/exoplayer2/e/e/f;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->wL:Lcom/applovin/exoplayer2/e/e/f;

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->wX:Landroid/util/SparseArray;

    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/applovin/exoplayer2/l/y;-><init>([B)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->wZ:Lcom/applovin/exoplayer2/l/y;

    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p2, v0}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->xa:Lcom/applovin/exoplayer2/l/y;

    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    sget-object v1, Lcom/applovin/exoplayer2/l/v;->abK:[B

    invoke-direct {p2, v1}, Lcom/applovin/exoplayer2/l/y;-><init>([B)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->wm:Lcom/applovin/exoplayer2/l/y;

    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p2, v0}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->wn:Lcom/applovin/exoplayer2/l/y;

    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p2}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->xb:Lcom/applovin/exoplayer2/l/y;

    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p2}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->xc:Lcom/applovin/exoplayer2/l/y;

    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    const/16 v0, 0x8

    invoke-direct {p2, v0}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->xd:Lcom/applovin/exoplayer2/l/y;

    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p2}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->xe:Lcom/applovin/exoplayer2/l/y;

    new-instance p2, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p2}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->xf:Lcom/applovin/exoplayer2/l/y;

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xC:[I

    return-void
.end method

.method private static G(Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_1bc

    goto/16 :goto_1b6

    :sswitch_f
    const-string v0, "A_OPUS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_1b6

    :cond_19
    const/16 v3, 0x1f

    goto/16 :goto_1b6

    :sswitch_1d
    const-string v0, "A_FLAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto/16 :goto_1b6

    :cond_27
    const/16 v3, 0x1e

    goto/16 :goto_1b6

    :sswitch_2b
    const-string v0, "A_EAC3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto/16 :goto_1b6

    :cond_35
    const/16 v3, 0x1d

    goto/16 :goto_1b6

    :sswitch_39
    const-string v0, "V_MPEG2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto/16 :goto_1b6

    :cond_43
    const/16 v3, 0x1c

    goto/16 :goto_1b6

    :sswitch_47
    const-string v0, "S_TEXT/UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_51

    goto/16 :goto_1b6

    :cond_51
    const/16 v3, 0x1b

    goto/16 :goto_1b6

    :sswitch_55
    const-string v0, "V_MPEGH/ISO/HEVC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5f

    goto/16 :goto_1b6

    :cond_5f
    const/16 v3, 0x1a

    goto/16 :goto_1b6

    :sswitch_63
    const-string v0, "S_TEXT/ASS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6d

    goto/16 :goto_1b6

    :cond_6d
    const/16 v3, 0x19

    goto/16 :goto_1b6

    :sswitch_71
    const-string v0, "A_PCM/INT/LIT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7b

    goto/16 :goto_1b6

    :cond_7b
    const/16 v3, 0x18

    goto/16 :goto_1b6

    :sswitch_7f
    const-string v0, "A_PCM/INT/BIG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_89

    goto/16 :goto_1b6

    :cond_89
    const/16 v3, 0x17

    goto/16 :goto_1b6

    :sswitch_8d
    const-string v0, "A_PCM/FLOAT/IEEE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_97

    goto/16 :goto_1b6

    :cond_97
    const/16 v3, 0x16

    goto/16 :goto_1b6

    :sswitch_9b
    const-string v0, "A_DTS/EXPRESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a5

    goto/16 :goto_1b6

    :cond_a5
    const/16 v3, 0x15

    goto/16 :goto_1b6

    :sswitch_a9
    const-string v0, "V_THEORA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b3

    goto/16 :goto_1b6

    :cond_b3
    const/16 v3, 0x14

    goto/16 :goto_1b6

    :sswitch_b7
    const-string v0, "S_HDMV/PGS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c1

    goto/16 :goto_1b6

    :cond_c1
    const/16 v3, 0x13

    goto/16 :goto_1b6

    :sswitch_c5
    const-string v0, "V_VP9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cf

    goto/16 :goto_1b6

    :cond_cf
    const/16 v3, 0x12

    goto/16 :goto_1b6

    :sswitch_d3
    const-string v0, "V_VP8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dd

    goto/16 :goto_1b6

    :cond_dd
    const/16 v3, 0x11

    goto/16 :goto_1b6

    :sswitch_e1
    const-string v0, "V_AV1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_eb

    goto/16 :goto_1b6

    :cond_eb
    const/16 v3, 0x10

    goto/16 :goto_1b6

    :sswitch_ef
    const-string v0, "A_DTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f9

    goto/16 :goto_1b6

    :cond_f9
    const/16 v3, 0xf

    goto/16 :goto_1b6

    :sswitch_fd
    const-string v0, "A_AC3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_107

    goto/16 :goto_1b6

    :cond_107
    const/16 v3, 0xe

    goto/16 :goto_1b6

    :sswitch_10b
    const-string v0, "A_AAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_115

    goto/16 :goto_1b6

    :cond_115
    const/16 v3, 0xd

    goto/16 :goto_1b6

    :sswitch_119
    const-string v0, "A_DTS/LOSSLESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_123

    goto/16 :goto_1b6

    :cond_123
    const/16 v3, 0xc

    goto/16 :goto_1b6

    :sswitch_127
    const-string v0, "S_VOBSUB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_131

    goto/16 :goto_1b6

    :cond_131
    const/16 v3, 0xb

    goto/16 :goto_1b6

    :sswitch_135
    const-string v0, "V_MPEG4/ISO/AVC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13f

    goto/16 :goto_1b6

    :cond_13f
    const/16 v3, 0xa

    goto/16 :goto_1b6

    :sswitch_143
    const-string v0, "V_MPEG4/ISO/ASP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14d

    goto/16 :goto_1b6

    :cond_14d
    const/16 v3, 0x9

    goto/16 :goto_1b6

    :sswitch_151
    const-string v0, "S_DVBSUB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15b

    goto/16 :goto_1b6

    :cond_15b
    const/16 v3, 0x8

    goto/16 :goto_1b6

    :sswitch_15f
    const-string v0, "V_MS/VFW/FOURCC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_168

    goto :goto_1b6

    :cond_168
    const/4 v3, 0x7

    goto :goto_1b6

    :sswitch_16a
    const-string v0, "A_MPEG/L3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_173

    goto :goto_1b6

    :cond_173
    const/4 v3, 0x6

    goto :goto_1b6

    :sswitch_175
    const-string v0, "A_MPEG/L2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17e

    goto :goto_1b6

    :cond_17e
    const/4 v3, 0x5

    goto :goto_1b6

    :sswitch_180
    const-string v0, "A_VORBIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_189

    goto :goto_1b6

    :cond_189
    const/4 v3, 0x4

    goto :goto_1b6

    :sswitch_18b
    const-string v0, "A_TRUEHD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_194

    goto :goto_1b6

    :cond_194
    const/4 v3, 0x3

    goto :goto_1b6

    :sswitch_196
    const-string v0, "A_MS/ACM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19f

    goto :goto_1b6

    :cond_19f
    const/4 v3, 0x2

    goto :goto_1b6

    :sswitch_1a1
    const-string v0, "V_MPEG4/ISO/SP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1aa

    goto :goto_1b6

    :cond_1aa
    const/4 v3, 0x1

    goto :goto_1b6

    :sswitch_1ac
    const-string v0, "V_MPEG4/ISO/AP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b5

    goto :goto_1b6

    :cond_1b5
    const/4 v3, 0x0

    :goto_1b6
    packed-switch v3, :pswitch_data_23e

    return v2

    :pswitch_1ba
    return v1

    nop

    :sswitch_data_1bc
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1ac
        -0x7ce7f3b0 -> :sswitch_1a1
        -0x76567dc0 -> :sswitch_196
        -0x6a615338 -> :sswitch_18b
        -0x672350af -> :sswitch_180
        -0x585f4fce -> :sswitch_175
        -0x585f4fcd -> :sswitch_16a
        -0x51dc40b2 -> :sswitch_15f
        -0x37a9c464 -> :sswitch_151
        -0x2016c535 -> :sswitch_143
        -0x2016c4e5 -> :sswitch_135
        -0x19552dbd -> :sswitch_127
        -0x1538b2ba -> :sswitch_119
        0x3c02325 -> :sswitch_10b
        0x3c02353 -> :sswitch_fd
        0x3c030c5 -> :sswitch_ef
        0x4e81333 -> :sswitch_e1
        0x4e86155 -> :sswitch_d3
        0x4e86156 -> :sswitch_c5
        0x5e8da3e -> :sswitch_b7
        0x1a8350d6 -> :sswitch_a9
        0x2056f406 -> :sswitch_9b
        0x25e26ee2 -> :sswitch_8d
        0x2b45174d -> :sswitch_7f
        0x2b453ce4 -> :sswitch_71
        0x2c0618eb -> :sswitch_63
        0x32fdf009 -> :sswitch_55
        0x54c61e47 -> :sswitch_47
        0x6bd6c624 -> :sswitch_39
        0x7446132a -> :sswitch_2b
        0x7446b0a6 -> :sswitch_1d
        0x744ad97d -> :sswitch_f
    .end sparse-switch

    :pswitch_data_23e
    .packed-switch 0x0
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
        :pswitch_1ba
    .end packed-switch
.end method

.method private a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/e/d$b;I)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p2, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object p2, Lcom/applovin/exoplayer2/e/e/d;->wR:[B

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/i;[BI)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/e/d;->iw()I

    move-result p1

    return p1

    :cond_14
    iget-object v0, p2, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object p2, Lcom/applovin/exoplayer2/e/e/d;->wT:[B

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/i;[BI)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/e/d;->iw()I

    move-result p1

    return p1

    :cond_28
    iget-object v0, p2, Lcom/applovin/exoplayer2/e/e/d$b;->wl:Lcom/applovin/exoplayer2/e/x;

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xL:Z

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1d9

    iget-boolean v1, p2, Lcom/applovin/exoplayer2/e/e/d$b;->xX:Z

    if-eqz v1, :cond_17b

    iget v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xF:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v1, v6

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xF:I

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xM:Z

    const/16 v6, 0x80

    if-nez v1, :cond_72

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v1

    invoke-interface {p1, v1, v5, v4}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    iget v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xI:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xI:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v1

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    if-eq v1, v6, :cond_6a

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v1

    aget-byte v1, v1, v5

    iput-byte v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xP:B

    iput-boolean v4, p0, Lcom/applovin/exoplayer2/e/e/d;->xM:Z

    goto :goto_72

    :cond_6a
    const/4 p1, 0x0

    const-string p2, "Extension bit is set in signal byte"

    invoke-static {p2, p1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :cond_72
    :goto_72
    iget-byte v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xP:B

    and-int/lit8 v7, v1, 0x1

    if-ne v7, v4, :cond_7a

    const/4 v7, 0x1

    goto :goto_7b

    :cond_7a
    const/4 v7, 0x0

    :goto_7b
    if-eqz v7, :cond_185

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_82

    const/4 v1, 0x1

    goto :goto_83

    :cond_82
    const/4 v1, 0x0

    :goto_83
    iget v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xF:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xF:I

    iget-boolean v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xQ:Z

    if-nez v7, :cond_cc

    iget-object v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xd:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v7}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v7

    const/16 v8, 0x8

    invoke-interface {p1, v7, v5, v8}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    iget v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xI:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xI:I

    iput-boolean v4, p0, Lcom/applovin/exoplayer2/e/e/d;->xQ:Z

    iget-object v7, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v7}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v7

    if-eqz v1, :cond_a9

    goto :goto_aa

    :cond_a9
    const/4 v6, 0x0

    :goto_aa
    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6, v5}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {v0, v6, v4, v4}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;II)V

    iget v6, p0, Lcom/applovin/exoplayer2/e/e/d;->xJ:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/applovin/exoplayer2/e/e/d;->xJ:I

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->xd:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6, v5}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->xd:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {v0, v6, v8, v4}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;II)V

    iget v6, p0, Lcom/applovin/exoplayer2/e/e/d;->xJ:I

    add-int/2addr v6, v8

    iput v6, p0, Lcom/applovin/exoplayer2/e/e/d;->xJ:I

    :cond_cc
    if-eqz v1, :cond_185

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xN:Z

    if-nez v1, :cond_ef

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v1

    invoke-interface {p1, v1, v5, v4}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    iget v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xI:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xI:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1, v5}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v1

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xO:I

    iput-boolean v4, p0, Lcom/applovin/exoplayer2/e/e/d;->xN:Z

    :cond_ef
    iget v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xO:I

    mul-int/lit8 v1, v1, 0x4

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6, v1}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v6

    invoke-interface {p1, v6, v5, v1}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    iget v6, p0, Lcom/applovin/exoplayer2/e/e/d;->xI:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/applovin/exoplayer2/e/e/d;->xI:I

    iget v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xO:I

    div-int/2addr v1, v3

    add-int/2addr v1, v4

    int-to-short v1, v1

    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xg:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_118

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_11e

    :cond_118
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xg:Ljava/nio/ByteBuffer;

    :cond_11e
    iget-object v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xg:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xg:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_12a
    iget v8, p0, Lcom/applovin/exoplayer2/e/e/d;->xO:I

    if-ge v1, v8, :cond_14c

    iget-object v8, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v8}, Lcom/applovin/exoplayer2/l/y;->pD()I

    move-result v8

    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_141

    iget-object v9, p0, Lcom/applovin/exoplayer2/e/e/d;->xg:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_148

    :cond_141
    iget-object v9, p0, Lcom/applovin/exoplayer2/e/e/d;->xg:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_148
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_12a

    :cond_14c
    iget v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xI:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v7

    rem-int/2addr v8, v3

    if-ne v8, v4, :cond_15a

    iget-object v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xg:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_165

    :cond_15a
    iget-object v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xg:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xg:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_165
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xe:Lcom/applovin/exoplayer2/l/y;

    iget-object v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xg:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lcom/applovin/exoplayer2/l/y;->l([BI)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xe:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {v0, v1, v6, v4}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;II)V

    iget v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xJ:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xJ:I

    goto :goto_185

    :cond_17b
    iget-object v1, p2, Lcom/applovin/exoplayer2/e/e/d$b;->xY:[B

    if-eqz v1, :cond_185

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->xb:Lcom/applovin/exoplayer2/l/y;

    array-length v7, v1

    invoke-virtual {v6, v1, v7}, Lcom/applovin/exoplayer2/l/y;->l([BI)V

    :cond_185
    :goto_185
    iget v1, p2, Lcom/applovin/exoplayer2/e/e/d$b;->xV:I

    if-lez v1, :cond_1d7

    iget v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xF:I

    const/high16 v6, 0x10000000

    or-int/2addr v1, v6

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xF:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xf:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1, v5}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v1

    shr-int/lit8 v6, p3, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v1

    shr-int/lit8 v6, p3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v1

    shr-int/lit8 v6, p3, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v1

    const/4 v6, 0x3

    and-int/lit16 v7, p3, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {v0, v1, v2, v3}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;II)V

    iget v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xJ:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xJ:I

    :cond_1d7
    iput-boolean v4, p0, Lcom/applovin/exoplayer2/e/e/d;->xL:Z

    :cond_1d9
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v1

    add-int/2addr p3, v1

    iget-object v1, p2, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_220

    iget-object v1, p2, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f5

    goto :goto_220

    :cond_1f5
    iget-object v1, p2, Lcom/applovin/exoplayer2/e/e/d$b;->yC:Lcom/applovin/exoplayer2/e/e/d$c;

    if-eqz v1, :cond_20b

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v1

    if-nez v1, :cond_202

    goto :goto_203

    :cond_202
    const/4 v4, 0x0

    :goto_203
    invoke-static {v4}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object v1, p2, Lcom/applovin/exoplayer2/e/e/d$b;->yC:Lcom/applovin/exoplayer2/e/e/d$c;

    invoke-virtual {v1, p1}, Lcom/applovin/exoplayer2/e/e/d$c;->A(Lcom/applovin/exoplayer2/e/i;)V

    :cond_20b
    :goto_20b
    iget v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xI:I

    if-ge v1, p3, :cond_271

    sub-int v1, p3, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/x;I)I

    move-result v1

    iget v3, p0, Lcom/applovin/exoplayer2/e/e/d;->xI:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/applovin/exoplayer2/e/e/d;->xI:I

    iget v3, p0, Lcom/applovin/exoplayer2/e/e/d;->xJ:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/applovin/exoplayer2/e/e/d;->xJ:I

    goto :goto_20b

    :cond_220
    :goto_220
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->wn:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v1

    aput-byte v5, v1, v5

    aput-byte v5, v1, v4

    aput-byte v5, v1, v3

    iget v3, p2, Lcom/applovin/exoplayer2/e/e/d$b;->wo:I

    rsub-int/lit8 v4, v3, 0x4

    :goto_230
    iget v6, p0, Lcom/applovin/exoplayer2/e/e/d;->xI:I

    if-ge v6, p3, :cond_271

    iget v6, p0, Lcom/applovin/exoplayer2/e/e/d;->xK:I

    if-nez v6, :cond_25d

    invoke-direct {p0, p1, v1, v4, v3}, Lcom/applovin/exoplayer2/e/e/d;->c(Lcom/applovin/exoplayer2/e/i;[BII)V

    iget v6, p0, Lcom/applovin/exoplayer2/e/e/d;->xI:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/applovin/exoplayer2/e/e/d;->xI:I

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->wn:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6, v5}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->wn:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->pD()I

    move-result v6

    iput v6, p0, Lcom/applovin/exoplayer2/e/e/d;->xK:I

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->wm:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6, v5}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/e/d;->wm:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {v0, v6, v2}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    iget v6, p0, Lcom/applovin/exoplayer2/e/e/d;->xJ:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/applovin/exoplayer2/e/e/d;->xJ:I

    goto :goto_230

    :cond_25d
    invoke-direct {p0, p1, v0, v6}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/x;I)I

    move-result v6

    iget v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xI:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xI:I

    iget v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xJ:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xJ:I

    iget v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xK:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xK:I

    goto :goto_230

    :cond_271
    iget-object p1, p2, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28a

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->wZ:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, v5}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->wZ:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {v0, p1, v2}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    iget p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xJ:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xJ:I

    :cond_28a
    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/e/d;->iw()I

    move-result p1

    return p1
.end method

.method private a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/x;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    if-lez v0, :cond_12

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p3, p0, Lcom/applovin/exoplayer2/e/e/d;->xb:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {p2, p3, p1}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    goto :goto_17

    :cond_12
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/k/g;IZ)I

    move-result p1

    :goto_17
    return p1
.end method

.method private a(Lcom/applovin/exoplayer2/l/r;Lcom/applovin/exoplayer2/l/r;)Lcom/applovin/exoplayer2/e/v;
    .registers 14
    .param p1    # Lcom/applovin/exoplayer2/l/r;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/applovin/exoplayer2/l/r;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xi:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a8

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->fH:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a8

    if-eqz p1, :cond_a8

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/r;->size()I

    move-result v0

    if-eqz v0, :cond_a8

    if-eqz p2, :cond_a8

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/r;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/r;->size()I

    move-result v1

    if-eq v0, v1, :cond_29

    goto/16 :goto_a8

    :cond_29
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/r;->size()I

    move-result v0

    new-array v1, v0, [I

    new-array v2, v0, [J

    new-array v3, v0, [J

    new-array v4, v0, [J

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_37
    if-ge v6, v0, :cond_4b

    invoke-virtual {p1, v6}, Lcom/applovin/exoplayer2/l/r;->fu(I)J

    move-result-wide v7

    aput-wide v7, v4, v6

    iget-wide v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xi:J

    invoke-virtual {p2, v6}, Lcom/applovin/exoplayer2/l/r;->fu(I)J

    move-result-wide v9

    add-long/2addr v7, v9

    aput-wide v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_4b
    :goto_4b
    add-int/lit8 p1, v0, -0x1

    if-ge v5, p1, :cond_62

    add-int/lit8 p1, v5, 0x1

    aget-wide v6, v2, p1

    aget-wide v8, v2, v5

    sub-long/2addr v6, v8

    long-to-int p2, v6

    aput p2, v1, v5

    aget-wide v6, v4, p1

    aget-wide v8, v4, v5

    sub-long/2addr v6, v8

    aput-wide v6, v3, v5

    move v5, p1

    goto :goto_4b

    :cond_62
    iget-wide v5, p0, Lcom/applovin/exoplayer2/e/e/d;->xi:J

    iget-wide v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xh:J

    add-long/2addr v5, v7

    aget-wide v7, v2, p1

    sub-long/2addr v5, v7

    long-to-int p2, v5

    aput p2, v1, p1

    iget-wide v5, p0, Lcom/applovin/exoplayer2/e/e/d;->fH:J

    aget-wide v7, v4, p1

    sub-long/2addr v5, v7

    aput-wide v5, v3, p1

    aget-wide v5, v3, p1

    const-wide/16 v7, 0x0

    cmp-long p2, v5, v7

    if-gtz p2, :cond_a2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Discarding last cue point with unexpected duration: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MatroskaExtractor"

    invoke-static {v0, p2}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    invoke-static {v3, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    invoke-static {v4, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    :cond_a2
    new-instance p1, Lcom/applovin/exoplayer2/e/c;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/applovin/exoplayer2/e/c;-><init>([I[J[J[J)V

    return-object p1

    :cond_a8
    :goto_a8
    new-instance p1, Lcom/applovin/exoplayer2/e/v$b;

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->fH:J

    invoke-direct {p1, v0, v1}, Lcom/applovin/exoplayer2/e/v$b;-><init>(J)V

    return-object p1
.end method

.method private a(Lcom/applovin/exoplayer2/e/e/d$b;JIII)V
    .registers 15

    iget-object v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yC:Lcom/applovin/exoplayer2/e/e/d$c;

    const/4 v7, 0x1

    if-eqz v0, :cond_f

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/applovin/exoplayer2/e/e/d$c;->b(Lcom/applovin/exoplayer2/e/e/d$b;JIII)V

    goto/16 :goto_a6

    :cond_f
    iget-object v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    :cond_23
    iget v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xB:I

    const-string v1, "MatroskaExtractor"

    if-le v0, v7, :cond_2f

    const-string v0, "Skipping subtitle sample in laced block."

    invoke-static {v1, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7e

    :cond_2f
    iget-wide v2, p0, Lcom/applovin/exoplayer2/e/e/d;->xz:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_40

    const-string v0, "Skipping subtitle sample with no duration."

    invoke-static {v1, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7e

    :cond_40
    iget-object v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xc:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/applovin/exoplayer2/e/e/d;->a(Ljava/lang/String;J[B)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xc:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v0

    :goto_51
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xc:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v1

    if-ge v0, v1, :cond_6c

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xc:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v1

    aget-byte v1, v1, v0

    if-nez v1, :cond_69

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xc:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/l/y;->fA(I)V

    goto :goto_6c

    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_6c
    :goto_6c
    iget-object v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->wl:Lcom/applovin/exoplayer2/e/x;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xc:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xc:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v0

    add-int/2addr p5, v0

    :cond_7e
    :goto_7e
    const/high16 v0, 0x10000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_9b

    iget v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xB:I

    if-le v0, v7, :cond_8c

    const v0, -0x10000001

    and-int/2addr p4, v0

    goto :goto_9b

    :cond_8c
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xf:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v0

    iget-object v1, p1, Lcom/applovin/exoplayer2/e/e/d$b;->wl:Lcom/applovin/exoplayer2/e/x;

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/e/d;->xf:Lcom/applovin/exoplayer2/l/y;

    const/4 v3, 0x2

    invoke-interface {v1, v2, v0, v3}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;II)V

    add-int/2addr p5, v0

    :cond_9b
    :goto_9b
    move v3, p4

    move v4, p5

    iget-object v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->wl:Lcom/applovin/exoplayer2/e/x;

    iget-object v6, p1, Lcom/applovin/exoplayer2/e/e/d$b;->xZ:Lcom/applovin/exoplayer2/e/x$a;

    move-wide v1, p2

    move v5, p6

    invoke-interface/range {v0 .. v6}, Lcom/applovin/exoplayer2/e/x;->a(JIIILcom/applovin/exoplayer2/e/x$a;)V

    :goto_a6
    iput-boolean v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xw:Z

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/e/i;[BI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p2

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xc:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->pl()I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_17

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xc:Lcom/applovin/exoplayer2/l/y;

    add-int v3, v0, p3

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/applovin/exoplayer2/l/y;->I([B)V

    goto :goto_21

    :cond_17
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xc:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v1

    array-length v3, p2

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_21
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xc:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v1

    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xc:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, v2}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xc:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/y;->fA(I)V

    return-void
.end method

.method private static a(Ljava/lang/String;J[B)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "S_TEXT/ASS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "S_TEXT/UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_19
    const-wide/16 v0, 0x3e8

    const-string p0, "%02d:%02d:%02d,%03d"

    invoke-static {p1, p2, p0, v0, v1}, Lcom/applovin/exoplayer2/e/e/d;->a(JLjava/lang/String;J)[B

    move-result-object p0

    const/16 p1, 0x13

    goto :goto_2e

    :cond_24
    const-wide/16 v0, 0x2710

    const-string p0, "%01d:%02d:%02d:%02d"

    invoke-static {p1, p2, p0, v0, v1}, Lcom/applovin/exoplayer2/e/e/d;->a(JLjava/lang/String;J)[B

    move-result-object p0

    const/16 p1, 0x15

    :goto_2e
    const/4 p2, 0x0

    array-length v0, p0

    invoke-static {p0, p2, p3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/e/u;J)Z
    .registers 9

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xp:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    iput-wide p2, p0, Lcom/applovin/exoplayer2/e/e/d;->xr:J

    iget-wide p2, p0, Lcom/applovin/exoplayer2/e/e/d;->xq:J

    iput-wide p2, p1, Lcom/applovin/exoplayer2/e/u;->uc:J

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/e/e/d;->xp:Z

    return v1

    :cond_f
    iget-boolean p2, p0, Lcom/applovin/exoplayer2/e/e/d;->xm:Z

    if-eqz p2, :cond_20

    iget-wide p2, p0, Lcom/applovin/exoplayer2/e/e/d;->xr:J

    const-wide/16 v3, -0x1

    cmp-long v0, p2, v3

    if-eqz v0, :cond_20

    iput-wide p2, p1, Lcom/applovin/exoplayer2/e/u;->uc:J

    iput-wide v3, p0, Lcom/applovin/exoplayer2/e/e/d;->xr:J

    return v1

    :cond_20
    return v2
.end method

.method private static a(JLjava/lang/String;J)[B
    .registers 15

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p0, v2

    if-eqz v4, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    const-wide v2, 0xd693a400L

    div-long v2, p0, v2

    long-to-int v3, v2

    mul-int/lit16 v2, v3, 0xe10

    int-to-long v4, v2

    const-wide/32 v6, 0xf4240

    mul-long v4, v4, v6

    sub-long/2addr p0, v4

    const-wide/32 v4, 0x3938700

    div-long v4, p0, v4

    long-to-int v2, v4

    mul-int/lit8 v4, v2, 0x3c

    int-to-long v4, v4

    mul-long v4, v4, v6

    sub-long/2addr p0, v4

    div-long v4, p0, v6

    long-to-int v5, v4

    int-to-long v8, v5

    mul-long v8, v8, v6

    sub-long/2addr p0, v8

    div-long/2addr p0, p3

    long-to-int p1, p0

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v0

    const/4 p4, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p4

    const/4 p4, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, p4

    invoke-static {p0, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/ai;->bk(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static a([II)[I
    .registers 3
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_5

    new-array p0, p1, [I

    return-object p0

    :cond_5
    array-length v0, p0

    if-lt v0, p1, :cond_9

    return-object p0

    :cond_9
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method private ap(J)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    iget-wide v2, p0, Lcom/applovin/exoplayer2/e/e/d;->xj:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_13

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/applovin/exoplayer2/l/ai;->e(JJJ)J

    move-result-wide p1

    return-wide p1

    :cond_13
    const/4 p1, 0x0

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-static {p2, p1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1
.end method

.method private c(Lcom/applovin/exoplayer2/e/i;[BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v1, p3, v0

    sub-int/2addr p4, v0

    invoke-interface {p1, p2, v1, p4}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    if-lez v0, :cond_17

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, p2, p3, v0}, Lcom/applovin/exoplayer2/l/y;->r([BII)V

    :cond_17
    return-void
.end method

.method private ca(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a TrackEntry"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1
.end method

.method private cb(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xt:Lcom/applovin/exoplayer2/l/r;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xu:Lcom/applovin/exoplayer2/l/r;

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a Cues"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1
.end method

.method private cc(I)Lcom/applovin/exoplayer2/e/e/d$b;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->ca(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    return-object p1
.end method

.method public static synthetic d()[Lcom/applovin/exoplayer2/e/h;
    .registers 1

    invoke-static {}, Lcom/applovin/exoplayer2/e/e/d;->ih()[Lcom/applovin/exoplayer2/e/h;

    move-result-object v0

    return-object v0
.end method

.method private h(Lcom/applovin/exoplayer2/e/i;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v0

    if-lt v0, p2, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pl()I

    move-result v0

    if-ge v0, p2, :cond_20

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pl()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/y;->bj(I)V

    :cond_20
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/l/y;->fA(I)V

    return-void
.end method

.method static synthetic iA()Ljava/util/UUID;
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/e/e/d;->wU:Ljava/util/UUID;

    return-object v0
.end method

.method private static synthetic ih()[Lcom/applovin/exoplayer2/e/h;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/applovin/exoplayer2/e/h;

    new-instance v1, Lcom/applovin/exoplayer2/e/e/d;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/e/e/d;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private io()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->vG:Lcom/applovin/exoplayer2/e/j;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private iw()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xJ:I

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/e/d;->ix()V

    return v0
.end method

.method private ix()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xI:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xJ:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xK:I

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xL:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xM:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xN:Z

    iput v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xO:I

    iput-byte v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xP:B

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xQ:Z

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    return-void
.end method

.method static synthetic iy()[B
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/e/e/d;->wS:[B

    return-object v0
.end method

.method static synthetic iz()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/e/e/d;->wV:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected a(IILcom/applovin/exoplayer2/e/i;)V
    .registers 25
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v8, p3

    const/16 v2, 0xa1

    const/16 v3, 0xa3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v0, v2, :cond_c5

    if-eq v0, v3, :cond_c5

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_af

    const/16 v2, 0x41ed

    if-eq v0, v2, :cond_a6

    const/16 v2, 0x4255

    if-eq v0, v2, :cond_98

    const/16 v2, 0x47e2

    if-eq v0, v2, :cond_86

    const/16 v2, 0x53ab

    if-eq v0, v2, :cond_62

    const/16 v2, 0x63a2

    if-eq v0, v2, :cond_54

    const/16 v2, 0x7672

    if-ne v0, v2, :cond_3e

    invoke-direct/range {p0 .. p1}, Lcom/applovin/exoplayer2/e/e/d;->ca(I)V

    iget-object v0, v7, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/applovin/exoplayer2/e/e/d$b;->dI:[B

    invoke-interface {v8, v2, v9, v1}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    goto/16 :goto_2fc

    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object v0

    throw v0

    :cond_54
    invoke-direct/range {p0 .. p1}, Lcom/applovin/exoplayer2/e/e/d;->ca(I)V

    iget-object v0, v7, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/applovin/exoplayer2/e/e/d$b;->ya:[B

    invoke-interface {v8, v2, v9, v1}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    goto/16 :goto_2fc

    :cond_62
    iget-object v0, v7, Lcom/applovin/exoplayer2/e/e/d;->xa:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    invoke-static {v0, v9}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, v7, Lcom/applovin/exoplayer2/e/e/d;->xa:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    rsub-int/lit8 v2, v1, 0x4

    invoke-interface {v8, v0, v2, v1}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    iget-object v0, v7, Lcom/applovin/exoplayer2/e/e/d;->xa:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0, v9}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object v0, v7, Lcom/applovin/exoplayer2/e/e/d;->xa:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, v7, Lcom/applovin/exoplayer2/e/e/d;->xn:I

    goto/16 :goto_2fc

    :cond_86
    new-array v2, v1, [B

    invoke-interface {v8, v2, v9, v1}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    invoke-direct/range {p0 .. p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object v0

    new-instance v1, Lcom/applovin/exoplayer2/e/x$a;

    invoke-direct {v1, v10, v2, v9, v9}, Lcom/applovin/exoplayer2/e/x$a;-><init>(I[BII)V

    iput-object v1, v0, Lcom/applovin/exoplayer2/e/e/d$b;->xZ:Lcom/applovin/exoplayer2/e/x$a;

    goto/16 :goto_2fc

    :cond_98
    invoke-direct/range {p0 .. p1}, Lcom/applovin/exoplayer2/e/e/d;->ca(I)V

    iget-object v0, v7, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/applovin/exoplayer2/e/e/d$b;->xY:[B

    invoke-interface {v8, v2, v9, v1}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    goto/16 :goto_2fc

    :cond_a6
    invoke-direct/range {p0 .. p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object v0

    invoke-virtual {v7, v0, v8, v1}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/e/d$b;Lcom/applovin/exoplayer2/e/i;I)V

    goto/16 :goto_2fc

    :cond_af
    iget v0, v7, Lcom/applovin/exoplayer2/e/e/d;->xx:I

    if-eq v0, v5, :cond_b4

    return-void

    :cond_b4
    iget-object v0, v7, Lcom/applovin/exoplayer2/e/e/d;->wX:Landroid/util/SparseArray;

    iget v2, v7, Lcom/applovin/exoplayer2/e/e/d;->xD:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/e/d$b;

    iget v2, v7, Lcom/applovin/exoplayer2/e/e/d;->xG:I

    invoke-virtual {v7, v0, v2, v8, v1}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/e/d$b;ILcom/applovin/exoplayer2/e/i;I)V

    goto/16 :goto_2fc

    :cond_c5
    iget v2, v7, Lcom/applovin/exoplayer2/e/e/d;->xx:I

    const/16 v6, 0x8

    if-nez v2, :cond_ea

    iget-object v2, v7, Lcom/applovin/exoplayer2/e/e/d;->wL:Lcom/applovin/exoplayer2/e/e/f;

    invoke-virtual {v2, v8, v9, v10, v6}, Lcom/applovin/exoplayer2/e/e/f;->a(Lcom/applovin/exoplayer2/e/i;ZZI)J

    move-result-wide v11

    long-to-int v2, v11

    iput v2, v7, Lcom/applovin/exoplayer2/e/e/d;->xD:I

    iget-object v2, v7, Lcom/applovin/exoplayer2/e/e/d;->wL:Lcom/applovin/exoplayer2/e/e/f;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/e/e/f;->iE()I

    move-result v2

    iput v2, v7, Lcom/applovin/exoplayer2/e/e/d;->xE:I

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v11, v7, Lcom/applovin/exoplayer2/e/e/d;->xz:J

    iput v10, v7, Lcom/applovin/exoplayer2/e/e/d;->xx:I

    iget-object v2, v7, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2, v9}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    :cond_ea
    iget-object v2, v7, Lcom/applovin/exoplayer2/e/e/d;->wX:Landroid/util/SparseArray;

    iget v11, v7, Lcom/applovin/exoplayer2/e/e/d;->xD:I

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/applovin/exoplayer2/e/e/d$b;

    if-nez v11, :cond_101

    iget v0, v7, Lcom/applovin/exoplayer2/e/e/d;->xE:I

    sub-int v0, v1, v0

    invoke-interface {v8, v0}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    iput v9, v7, Lcom/applovin/exoplayer2/e/e/d;->xx:I

    return-void

    :cond_101
    invoke-static {v11}, Lcom/applovin/exoplayer2/e/e/d$b;->a(Lcom/applovin/exoplayer2/e/e/d$b;)V

    iget v2, v7, Lcom/applovin/exoplayer2/e/e/d;->xx:I

    if-ne v2, v10, :cond_2b2

    const/4 v2, 0x3

    invoke-direct {v7, v8, v2}, Lcom/applovin/exoplayer2/e/e/d;->h(Lcom/applovin/exoplayer2/e/i;I)V

    iget-object v12, v7, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v12}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v12

    aget-byte v12, v12, v5

    and-int/lit8 v12, v12, 0x6

    shr-int/2addr v12, v10

    const/16 v13, 0xff

    if-nez v12, :cond_12f

    iput v10, v7, Lcom/applovin/exoplayer2/e/e/d;->xB:I

    iget-object v4, v7, Lcom/applovin/exoplayer2/e/e/d;->xC:[I

    invoke-static {v4, v10}, Lcom/applovin/exoplayer2/e/e/d;->a([II)[I

    move-result-object v4

    iput-object v4, v7, Lcom/applovin/exoplayer2/e/e/d;->xC:[I

    iget v12, v7, Lcom/applovin/exoplayer2/e/e/d;->xE:I

    sub-int/2addr v1, v12

    sub-int/2addr v1, v2

    aput v1, v4, v9

    :goto_12b
    move-object/from16 v19, v11

    goto/16 :goto_256

    :cond_12f
    const/4 v14, 0x4

    invoke-direct {v7, v8, v14}, Lcom/applovin/exoplayer2/e/e/d;->h(Lcom/applovin/exoplayer2/e/i;I)V

    iget-object v15, v7, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v15}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v15

    aget-byte v15, v15, v2

    and-int/2addr v15, v13

    add-int/2addr v15, v10

    iput v15, v7, Lcom/applovin/exoplayer2/e/e/d;->xB:I

    iget-object v3, v7, Lcom/applovin/exoplayer2/e/e/d;->xC:[I

    invoke-static {v3, v15}, Lcom/applovin/exoplayer2/e/e/d;->a([II)[I

    move-result-object v3

    iput-object v3, v7, Lcom/applovin/exoplayer2/e/e/d;->xC:[I

    if-ne v12, v5, :cond_154

    iget v2, v7, Lcom/applovin/exoplayer2/e/e/d;->xE:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v14

    iget v2, v7, Lcom/applovin/exoplayer2/e/e/d;->xB:I

    div-int/2addr v1, v2

    invoke-static {v3, v9, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_12b

    :cond_154
    if-ne v12, v10, :cond_18b

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_158
    iget v4, v7, Lcom/applovin/exoplayer2/e/e/d;->xB:I

    add-int/lit8 v12, v4, -0x1

    if-ge v2, v12, :cond_180

    iget-object v4, v7, Lcom/applovin/exoplayer2/e/e/d;->xC:[I

    aput v9, v4, v2

    :cond_162
    add-int/2addr v14, v10

    invoke-direct {v7, v8, v14}, Lcom/applovin/exoplayer2/e/e/d;->h(Lcom/applovin/exoplayer2/e/i;I)V

    iget-object v4, v7, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v4

    add-int/lit8 v12, v14, -0x1

    aget-byte v4, v4, v12

    and-int/2addr v4, v13

    iget-object v12, v7, Lcom/applovin/exoplayer2/e/e/d;->xC:[I

    aget v15, v12, v2

    add-int/2addr v15, v4

    aput v15, v12, v2

    if-eq v4, v13, :cond_162

    aget v4, v12, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_158

    :cond_180
    iget-object v2, v7, Lcom/applovin/exoplayer2/e/e/d;->xC:[I

    sub-int/2addr v4, v10

    iget v12, v7, Lcom/applovin/exoplayer2/e/e/d;->xE:I

    sub-int/2addr v1, v12

    sub-int/2addr v1, v14

    sub-int/2addr v1, v3

    aput v1, v2, v4

    goto :goto_12b

    :cond_18b
    if-ne v12, v2, :cond_29c

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_18f
    iget v12, v7, Lcom/applovin/exoplayer2/e/e/d;->xB:I

    add-int/lit8 v15, v12, -0x1

    if-ge v2, v15, :cond_249

    iget-object v12, v7, Lcom/applovin/exoplayer2/e/e/d;->xC:[I

    aput v9, v12, v2

    add-int/lit8 v14, v14, 0x1

    invoke-direct {v7, v8, v14}, Lcom/applovin/exoplayer2/e/e/d;->h(Lcom/applovin/exoplayer2/e/i;I)V

    iget-object v12, v7, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v12}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v12

    add-int/lit8 v15, v14, -0x1

    aget-byte v12, v12, v15

    if-eqz v12, :cond_242

    const-wide/16 v16, 0x0

    const/4 v12, 0x0

    :goto_1ad
    if-ge v12, v6, :cond_20e

    rsub-int/lit8 v18, v12, 0x7

    shl-int v5, v10, v18

    iget-object v9, v7, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v9}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v9

    aget-byte v9, v9, v15

    and-int/2addr v9, v5

    if-eqz v9, :cond_204

    add-int/2addr v14, v12

    invoke-direct {v7, v8, v14}, Lcom/applovin/exoplayer2/e/e/d;->h(Lcom/applovin/exoplayer2/e/i;I)V

    iget-object v9, v7, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v9}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v9

    add-int/lit8 v16, v15, 0x1

    aget-byte v9, v9, v15

    and-int/2addr v9, v13

    not-int v5, v5

    and-int/2addr v5, v9

    move-object/from16 v19, v11

    int-to-long v10, v5

    move/from16 v5, v16

    :goto_1d4
    move-wide/from16 v16, v10

    if-ge v5, v14, :cond_1f0

    shl-long v10, v16, v6

    iget-object v15, v7, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v15}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v15

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v15, v5

    and-int/2addr v5, v13

    move/from16 v20, v14

    int-to-long v13, v5

    or-long/2addr v10, v13

    move/from16 v5, v16

    move/from16 v14, v20

    const/16 v13, 0xff

    goto :goto_1d4

    :cond_1f0
    move/from16 v20, v14

    if-lez v2, :cond_1ff

    mul-int/lit8 v12, v12, 0x7

    add-int/lit8 v12, v12, 0x6

    const-wide/16 v10, 0x1

    shl-long v12, v10, v12

    sub-long/2addr v12, v10

    sub-long v16, v16, v12

    :cond_1ff
    move-wide/from16 v10, v16

    move/from16 v14, v20

    goto :goto_212

    :cond_204
    move-object/from16 v19, v11

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v13, 0xff

    goto :goto_1ad

    :cond_20e
    move-object/from16 v19, v11

    move-wide/from16 v10, v16

    :goto_212
    const-wide/32 v12, -0x80000000

    cmp-long v5, v10, v12

    if-ltz v5, :cond_23b

    const-wide/32 v12, 0x7fffffff

    cmp-long v5, v10, v12

    if-gtz v5, :cond_23b

    long-to-int v5, v10

    iget-object v10, v7, Lcom/applovin/exoplayer2/e/e/d;->xC:[I

    if-nez v2, :cond_226

    goto :goto_22b

    :cond_226
    add-int/lit8 v11, v2, -0x1

    aget v11, v10, v11

    add-int/2addr v5, v11

    :goto_22b
    aput v5, v10, v2

    aget v5, v10, v2

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v11, v19

    const/4 v5, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v13, 0xff

    goto/16 :goto_18f

    :cond_23b
    const-string v0, "EBML lacing sample size out of range."

    invoke-static {v0, v4}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object v0

    throw v0

    :cond_242
    const-string v0, "No valid varint length mask found"

    invoke-static {v0, v4}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object v0

    throw v0

    :cond_249
    move-object/from16 v19, v11

    iget-object v2, v7, Lcom/applovin/exoplayer2/e/e/d;->xC:[I

    const/4 v4, 0x1

    sub-int/2addr v12, v4

    iget v4, v7, Lcom/applovin/exoplayer2/e/e/d;->xE:I

    sub-int/2addr v1, v4

    sub-int/2addr v1, v14

    sub-int/2addr v1, v3

    aput v1, v2, v12

    :goto_256
    iget-object v1, v7, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    shl-int/2addr v1, v6

    iget-object v2, v7, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iget-wide v2, v7, Lcom/applovin/exoplayer2/e/e/d;->xs:J

    int-to-long v4, v1

    invoke-direct {v7, v4, v5}, Lcom/applovin/exoplayer2/e/e/d;->ap(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v7, Lcom/applovin/exoplayer2/e/e/d;->xy:J

    move-object/from16 v10, v19

    iget v1, v10, Lcom/applovin/exoplayer2/e/e/d$b;->bs:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_292

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_290

    iget-object v1, v7, Lcom/applovin/exoplayer2/e/e/d;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v1

    aget-byte v1, v1, v2

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_290

    goto :goto_292

    :cond_290
    const/4 v1, 0x0

    goto :goto_293

    :cond_292
    :goto_292
    const/4 v1, 0x1

    :goto_293
    iput v1, v7, Lcom/applovin/exoplayer2/e/e/d;->xF:I

    const/4 v1, 0x2

    iput v1, v7, Lcom/applovin/exoplayer2/e/e/d;->xx:I

    const/4 v1, 0x0

    iput v1, v7, Lcom/applovin/exoplayer2/e/e/d;->xA:I

    goto :goto_2b3

    :cond_29c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected lacing value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object v0

    throw v0

    :cond_2b2
    move-object v10, v11

    :goto_2b3
    const/16 v1, 0xa3

    if-ne v0, v1, :cond_2e5

    :goto_2b7
    iget v0, v7, Lcom/applovin/exoplayer2/e/e/d;->xA:I

    iget v1, v7, Lcom/applovin/exoplayer2/e/e/d;->xB:I

    if-ge v0, v1, :cond_2e1

    iget-object v1, v7, Lcom/applovin/exoplayer2/e/e/d;->xC:[I

    aget v0, v1, v0

    invoke-direct {v7, v8, v10, v0}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/e/d$b;I)I

    move-result v5

    iget-wide v0, v7, Lcom/applovin/exoplayer2/e/e/d;->xy:J

    iget v2, v7, Lcom/applovin/exoplayer2/e/e/d;->xA:I

    iget v3, v10, Lcom/applovin/exoplayer2/e/e/d$b;->xU:I

    mul-int v2, v2, v3

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v2, v0

    iget v4, v7, Lcom/applovin/exoplayer2/e/e/d;->xF:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct/range {v0 .. v6}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/e/d$b;JIII)V

    iget v0, v7, Lcom/applovin/exoplayer2/e/e/d;->xA:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lcom/applovin/exoplayer2/e/e/d;->xA:I

    goto :goto_2b7

    :cond_2e1
    const/4 v0, 0x0

    iput v0, v7, Lcom/applovin/exoplayer2/e/e/d;->xx:I

    goto :goto_2fc

    :cond_2e5
    :goto_2e5
    iget v0, v7, Lcom/applovin/exoplayer2/e/e/d;->xA:I

    iget v1, v7, Lcom/applovin/exoplayer2/e/e/d;->xB:I

    if-ge v0, v1, :cond_2fc

    iget-object v1, v7, Lcom/applovin/exoplayer2/e/e/d;->xC:[I

    aget v2, v1, v0

    invoke-direct {v7, v8, v10, v2}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/e/d$b;I)I

    move-result v2

    aput v2, v1, v0

    iget v0, v7, Lcom/applovin/exoplayer2/e/e/d;->xA:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lcom/applovin/exoplayer2/e/e/d;->xA:I

    goto :goto_2e5

    :cond_2fc
    :goto_2fc
    return-void
.end method

.method protected a(Lcom/applovin/exoplayer2/e/e/d$b;ILcom/applovin/exoplayer2/e/i;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1d

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    const-string p2, "V_VP9"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xf:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xf:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2, p4}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    goto :goto_20

    :cond_1d
    invoke-interface {p3, p4}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    :goto_20
    return-void
.end method

.method protected a(Lcom/applovin/exoplayer2/e/e/d$b;Lcom/applovin/exoplayer2/e/i;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/e/d$b;->b(Lcom/applovin/exoplayer2/e/e/d$b;)I

    move-result v0

    const v1, 0x64767643

    if-eq v0, v1, :cond_17

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/e/d$b;->b(Lcom/applovin/exoplayer2/e/e/d$b;)I

    move-result v0

    const v1, 0x64766343

    if-ne v0, v1, :cond_13

    goto :goto_17

    :cond_13
    invoke-interface {p2, p3}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    goto :goto_1f

    :cond_17
    :goto_17
    new-array v0, p3, [B

    iput-object v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yy:[B

    const/4 p1, 0x0

    invoke-interface {p2, v0, p1, p3}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    :goto_1f
    return-void
.end method

.method public final a(Lcom/applovin/exoplayer2/e/j;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->vG:Lcom/applovin/exoplayer2/e/j;

    return-void
.end method

.method public final a(Lcom/applovin/exoplayer2/e/i;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/e/e/e;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/e/e/e;-><init>()V

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/e/e/e;->a(Lcom/applovin/exoplayer2/e/i;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xw:Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_1e

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/e/e/d;->xw:Z

    if-nez v3, :cond_1e

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/e/d;->wW:Lcom/applovin/exoplayer2/e/e/c;

    invoke-interface {v2, p1}, Lcom/applovin/exoplayer2/e/e/c;->y(Lcom/applovin/exoplayer2/e/i;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v3

    invoke-direct {p0, p2, v3, v4}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/u;J)Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    :cond_1e
    if-nez v2, :cond_3b

    :goto_20
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->wX:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_39

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->wX:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/e/e/d$b;

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/e/d$b;->a(Lcom/applovin/exoplayer2/e/e/d$b;)V

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/e/e/d$b;->iB()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_39
    const/4 p1, -0x1

    return p1

    :cond_3b
    return v0
.end method

.method protected b(ID)V
    .registers 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_7d

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_79

    packed-switch p1, :pswitch_data_86

    packed-switch p1, :pswitch_data_9e

    goto/16 :goto_84

    :pswitch_10
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yh:F

    goto/16 :goto_84

    :pswitch_19
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yg:F

    goto :goto_84

    :pswitch_21
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yf:F

    goto :goto_84

    :pswitch_29
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yx:F

    goto :goto_84

    :pswitch_31
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yw:F

    goto :goto_84

    :pswitch_39
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yv:F

    goto :goto_84

    :pswitch_41
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yu:F

    goto :goto_84

    :pswitch_49
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yt:F

    goto :goto_84

    :pswitch_51
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->ys:F

    goto :goto_84

    :pswitch_59
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yr:F

    goto :goto_84

    :pswitch_61
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yq:F

    goto :goto_84

    :pswitch_69
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yp:F

    goto :goto_84

    :pswitch_71
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yo:F

    goto :goto_84

    :cond_79
    double-to-long p1, p2

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xk:J

    goto :goto_84

    :cond_7d
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    double-to-int p2, p2

    iput p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->dM:I

    :goto_84
    return-void

    nop

    :pswitch_data_86
    .packed-switch 0x55d1
        :pswitch_71
        :pswitch_69
        :pswitch_61
        :pswitch_59
        :pswitch_51
        :pswitch_49
        :pswitch_41
        :pswitch_39
        :pswitch_31
        :pswitch_29
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x7673
        :pswitch_21
        :pswitch_19
        :pswitch_10
    .end packed-switch
.end method

.method protected b(ILjava/lang/String;)V
    .registers 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const/16 v0, 0x86

    if-eq p1, v0, :cond_4e

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_21

    const/16 v0, 0x536e

    if-eq p1, v0, :cond_1a

    const v0, 0x22b59c

    if-eq p1, v0, :cond_12

    goto :goto_54

    :cond_12
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/e/e/d$b;->a(Lcom/applovin/exoplayer2/e/e/d$b;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_54

    :cond_1a
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    iput-object p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->name:Ljava/lang/String;

    goto :goto_54

    :cond_21
    const-string p1, "webm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_54

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    goto :goto_54

    :cond_32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DocType "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :cond_4e
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    iput-object p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    :cond_54
    :goto_54
    return-void
.end method

.method protected bX(I)I
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    sparse-switch p1, :sswitch_data_10

    const/4 p1, 0x0

    return p1

    :sswitch_5
    const/4 p1, 0x5

    return p1

    :sswitch_7
    const/4 p1, 0x4

    return p1

    :sswitch_9
    const/4 p1, 0x1

    return p1

    :sswitch_b
    const/4 p1, 0x3

    return p1

    :sswitch_d
    const/4 p1, 0x2

    return p1

    nop

    :sswitch_data_10
    .sparse-switch
        0x83 -> :sswitch_d
        0x86 -> :sswitch_b
        0x88 -> :sswitch_d
        0x9b -> :sswitch_d
        0x9f -> :sswitch_d
        0xa0 -> :sswitch_9
        0xa1 -> :sswitch_7
        0xa3 -> :sswitch_7
        0xa5 -> :sswitch_7
        0xa6 -> :sswitch_9
        0xae -> :sswitch_9
        0xb0 -> :sswitch_d
        0xb3 -> :sswitch_d
        0xb5 -> :sswitch_5
        0xb7 -> :sswitch_9
        0xba -> :sswitch_d
        0xbb -> :sswitch_9
        0xd7 -> :sswitch_d
        0xe0 -> :sswitch_9
        0xe1 -> :sswitch_9
        0xe7 -> :sswitch_d
        0xee -> :sswitch_d
        0xf1 -> :sswitch_d
        0xfb -> :sswitch_d
        0x41e4 -> :sswitch_9
        0x41e7 -> :sswitch_d
        0x41ed -> :sswitch_7
        0x4254 -> :sswitch_d
        0x4255 -> :sswitch_7
        0x4282 -> :sswitch_b
        0x4285 -> :sswitch_d
        0x42f7 -> :sswitch_d
        0x4489 -> :sswitch_5
        0x47e1 -> :sswitch_d
        0x47e2 -> :sswitch_7
        0x47e7 -> :sswitch_9
        0x47e8 -> :sswitch_d
        0x4dbb -> :sswitch_9
        0x5031 -> :sswitch_d
        0x5032 -> :sswitch_d
        0x5034 -> :sswitch_9
        0x5035 -> :sswitch_9
        0x536e -> :sswitch_b
        0x53ab -> :sswitch_7
        0x53ac -> :sswitch_d
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_d
        0x54b2 -> :sswitch_d
        0x54ba -> :sswitch_d
        0x55aa -> :sswitch_d
        0x55b0 -> :sswitch_9
        0x55b9 -> :sswitch_d
        0x55ba -> :sswitch_d
        0x55bb -> :sswitch_d
        0x55bc -> :sswitch_d
        0x55bd -> :sswitch_d
        0x55d0 -> :sswitch_9
        0x55d1 -> :sswitch_5
        0x55d2 -> :sswitch_5
        0x55d3 -> :sswitch_5
        0x55d4 -> :sswitch_5
        0x55d5 -> :sswitch_5
        0x55d6 -> :sswitch_5
        0x55d7 -> :sswitch_5
        0x55d8 -> :sswitch_5
        0x55d9 -> :sswitch_5
        0x55da -> :sswitch_5
        0x55ee -> :sswitch_d
        0x56aa -> :sswitch_d
        0x56bb -> :sswitch_d
        0x6240 -> :sswitch_9
        0x6264 -> :sswitch_d
        0x63a2 -> :sswitch_7
        0x6d80 -> :sswitch_9
        0x75a1 -> :sswitch_9
        0x7670 -> :sswitch_9
        0x7671 -> :sswitch_d
        0x7672 -> :sswitch_7
        0x7673 -> :sswitch_5
        0x7674 -> :sswitch_5
        0x7675 -> :sswitch_5
        0x22b59c -> :sswitch_b
        0x23e383 -> :sswitch_d
        0x2ad7b1 -> :sswitch_d
        0x114d9b74 -> :sswitch_9
        0x1549a966 -> :sswitch_9
        0x1654ae6b -> :sswitch_9
        0x18538067 -> :sswitch_9
        0x1a45dfa3 -> :sswitch_9
        0x1c53bb6b -> :sswitch_9
        0x1f43b675 -> :sswitch_9
    .end sparse-switch
.end method

.method protected bY(I)Z
    .registers 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const v0, 0x1549a966

    if-eq p1, v0, :cond_17

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_17

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_17

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    :goto_18
    return p1
.end method

.method protected bZ(I)V
    .registers 12
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/e/d;->io()V

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_102

    const/16 v0, 0xae

    const/4 v2, 0x0

    if-eq p1, v0, :cond_d8

    const/16 v0, 0x4dbb

    const v3, 0x1c53bb6b

    if-eq p1, v0, :cond_be

    const/16 v0, 0x6240

    const/4 v4, 0x1

    if-eq p1, v0, :cond_8e

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_78

    const v0, 0x1549a966

    if-eq p1, v0, :cond_5a

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_44

    if-eq p1, v3, :cond_2b

    goto/16 :goto_14d

    :cond_2b
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xm:Z

    if-nez p1, :cond_3e

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->vG:Lcom/applovin/exoplayer2/e/j;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xt:Lcom/applovin/exoplayer2/l/r;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xu:Lcom/applovin/exoplayer2/l/r;

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/l/r;Lcom/applovin/exoplayer2/l/r;)Lcom/applovin/exoplayer2/e/v;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/e/j;->a(Lcom/applovin/exoplayer2/e/v;)V

    iput-boolean v4, p0, Lcom/applovin/exoplayer2/e/e/d;->xm:Z

    :cond_3e
    iput-object v2, p0, Lcom/applovin/exoplayer2/e/e/d;->xt:Lcom/applovin/exoplayer2/l/r;

    iput-object v2, p0, Lcom/applovin/exoplayer2/e/e/d;->xu:Lcom/applovin/exoplayer2/l/r;

    goto/16 :goto_14d

    :cond_44
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->wX:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_53

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->vG:Lcom/applovin/exoplayer2/e/j;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/j;->ig()V

    goto/16 :goto_14d

    :cond_53
    const-string p1, "No valid tracks were found"

    invoke-static {p1, v2}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :cond_5a
    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xj:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_6a

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xj:J

    :cond_6a
    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xk:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_14d

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/e/e/d;->ap(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->fH:J

    goto/16 :goto_14d

    :cond_78
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->ca(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    iget-boolean v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->xX:Z

    if-eqz v0, :cond_14d

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/e/d$b;->xY:[B

    if-nez p1, :cond_87

    goto/16 :goto_14d

    :cond_87
    const-string p1, "Combining encryption and compression is not supported"

    invoke-static {p1, v2}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :cond_8e
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->ca(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    iget-boolean v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->xX:Z

    if-eqz v0, :cond_14d

    iget-object v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->xZ:Lcom/applovin/exoplayer2/e/x$a;

    if-eqz v0, :cond_b7

    new-instance v0, Lcom/applovin/exoplayer2/d/e;

    new-array v2, v4, [Lcom/applovin/exoplayer2/d/e$a;

    new-instance v3, Lcom/applovin/exoplayer2/d/e$a;

    sget-object v4, Lcom/applovin/exoplayer2/h;->aj:Ljava/util/UUID;

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    iget-object v5, v5, Lcom/applovin/exoplayer2/e/e/d$b;->xZ:Lcom/applovin/exoplayer2/e/x$a;

    iget-object v5, v5, Lcom/applovin/exoplayer2/e/x$a;->uV:[B

    const-string v6, "video/webm"

    invoke-direct {v3, v4, v6, v5}, Lcom/applovin/exoplayer2/d/e$a;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lcom/applovin/exoplayer2/d/e;-><init>([Lcom/applovin/exoplayer2/d/e$a;)V

    iput-object v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->dC:Lcom/applovin/exoplayer2/d/e;

    goto/16 :goto_14d

    :cond_b7
    const-string p1, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-static {p1, v2}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :cond_be
    iget p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xn:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_d1

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xo:J

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_d1

    if-ne p1, v3, :cond_14d

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xq:J

    goto/16 :goto_14d

    :cond_d1
    const-string p1, "Mandatory element SeekID or SeekPosition not found"

    invoke-static {p1, v2}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :cond_d8
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/e/e/d$b;

    iget-object v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    if-eqz v0, :cond_fb

    invoke-static {v0}, Lcom/applovin/exoplayer2/e/e/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f8

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->vG:Lcom/applovin/exoplayer2/e/j;

    iget v1, p1, Lcom/applovin/exoplayer2/e/e/d$b;->xT:I

    invoke-virtual {p1, v0, v1}, Lcom/applovin/exoplayer2/e/e/d$b;->a(Lcom/applovin/exoplayer2/e/j;I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d;->wX:Landroid/util/SparseArray;

    iget v1, p1, Lcom/applovin/exoplayer2/e/e/d$b;->xT:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_f8
    iput-object v2, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    goto :goto_14d

    :cond_fb
    const-string p1, "CodecId is missing in TrackEntry element"

    invoke-static {p1, v2}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :cond_102
    iget p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xx:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_108

    return-void

    :cond_108
    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_10a
    iget v2, p0, Lcom/applovin/exoplayer2/e/e/d;->xB:I

    if-ge p1, v2, :cond_116

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/e/d;->xC:[I

    aget v2, v2, p1

    add-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_10a

    :cond_116
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->wX:Landroid/util/SparseArray;

    iget v2, p0, Lcom/applovin/exoplayer2/e/e/d;->xD:I

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/e/e/d$b;

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/e/d$b;->a(Lcom/applovin/exoplayer2/e/e/d$b;)V

    const/4 v9, 0x0

    :goto_124
    iget v2, p0, Lcom/applovin/exoplayer2/e/e/d;->xB:I

    if-ge v9, v2, :cond_14b

    iget-wide v2, p0, Lcom/applovin/exoplayer2/e/e/d;->xy:J

    iget v4, p1, Lcom/applovin/exoplayer2/e/e/d$b;->xU:I

    mul-int v4, v4, v9

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v4, v2

    iget v2, p0, Lcom/applovin/exoplayer2/e/e/d;->xF:I

    if-nez v9, :cond_13c

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/e/e/d;->xH:Z

    if-nez v3, :cond_13c

    or-int/lit8 v2, v2, 0x1

    :cond_13c
    move v6, v2

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/e/d;->xC:[I

    aget v7, v2, v9

    sub-int/2addr v0, v7

    move-object v2, p0

    move-object v3, p1

    move v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/applovin/exoplayer2/e/e/d;->a(Lcom/applovin/exoplayer2/e/e/d$b;JIII)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_124

    :cond_14b
    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xx:I

    :cond_14d
    :goto_14d
    return-void
.end method

.method protected e(IJ)V
    .registers 12
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const/16 v0, 0x5031

    const/4 v1, 0x0

    const-string v2, " not supported"

    if-eq p1, v0, :cond_248

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_22a

    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_268

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_2e6

    goto/16 :goto_24e

    :pswitch_1a
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yn:I

    goto/16 :goto_24e

    :pswitch_23
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/applovin/exoplayer2/e/e/d$b;->ym:I

    goto/16 :goto_24e

    :pswitch_2c
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->ca(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    iput-boolean v7, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yi:Z

    long-to-int p1, p2

    invoke-static {p1}, Lcom/applovin/exoplayer2/m/b;->fN(I)I

    move-result p1

    if-eq p1, v0, :cond_24e

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    iput p1, p2, Lcom/applovin/exoplayer2/e/e/d$b;->yj:I

    goto/16 :goto_24e

    :pswitch_40
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->ca(I)V

    long-to-int p1, p2

    invoke-static {p1}, Lcom/applovin/exoplayer2/m/b;->fO(I)I

    move-result p1

    if-eq p1, v0, :cond_24e

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    iput p1, p2, Lcom/applovin/exoplayer2/e/e/d$b;->yk:I

    goto/16 :goto_24e

    :pswitch_50
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->ca(I)V

    long-to-int p1, p2

    if-eq p1, v7, :cond_60

    if-eq p1, v6, :cond_5a

    goto/16 :goto_24e

    :cond_5a
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    iput v7, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yl:I

    goto/16 :goto_24e

    :cond_60
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    iput v6, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yl:I

    goto/16 :goto_24e

    :sswitch_66
    iput-wide p2, p0, Lcom/applovin/exoplayer2/e/e/d;->xj:J

    goto/16 :goto_24e

    :sswitch_6a
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/applovin/exoplayer2/e/e/d$b;->xU:I

    goto/16 :goto_24e

    :sswitch_73
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->ca(I)V

    long-to-int p1, p2

    if-eqz p1, :cond_93

    if-eq p1, v7, :cond_8d

    if-eq p1, v6, :cond_87

    if-eq p1, v5, :cond_81

    goto/16 :goto_24e

    :cond_81
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    iput v5, p1, Lcom/applovin/exoplayer2/e/e/d$b;->ye:I

    goto/16 :goto_24e

    :cond_87
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    iput v6, p1, Lcom/applovin/exoplayer2/e/e/d$b;->ye:I

    goto/16 :goto_24e

    :cond_8d
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    iput v7, p1, Lcom/applovin/exoplayer2/e/e/d$b;->ye:I

    goto/16 :goto_24e

    :cond_93
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    iput v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->ye:I

    goto/16 :goto_24e

    :sswitch_99
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yz:I

    goto/16 :goto_24e

    :sswitch_a2
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    iput-wide p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yB:J

    goto/16 :goto_24e

    :sswitch_aa
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    iput-wide p2, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yA:J

    goto/16 :goto_24e

    :sswitch_b2
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/applovin/exoplayer2/e/e/d$b;->xV:I

    goto/16 :goto_24e

    :sswitch_bb
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    cmp-long v1, p2, v3

    if-nez v1, :cond_c4

    const/4 v0, 0x1

    :cond_c4
    iput-boolean v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yD:Z

    goto/16 :goto_24e

    :sswitch_c8
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yc:I

    goto/16 :goto_24e

    :sswitch_d1
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yd:I

    goto/16 :goto_24e

    :sswitch_da
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yb:I

    goto/16 :goto_24e

    :sswitch_e3
    long-to-int p3, p2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->ca(I)V

    if-eqz p3, :cond_105

    if-eq p3, v7, :cond_ff

    if-eq p3, v5, :cond_f9

    const/16 p1, 0xf

    if-eq p3, p1, :cond_f3

    goto/16 :goto_24e

    :cond_f3
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    iput v5, p1, Lcom/applovin/exoplayer2/e/e/d$b;->dJ:I

    goto/16 :goto_24e

    :cond_f9
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    iput v7, p1, Lcom/applovin/exoplayer2/e/e/d$b;->dJ:I

    goto/16 :goto_24e

    :cond_ff
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    iput v6, p1, Lcom/applovin/exoplayer2/e/e/d$b;->dJ:I

    goto/16 :goto_24e

    :cond_105
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    iput v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->dJ:I

    goto/16 :goto_24e

    :sswitch_10b
    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xi:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/applovin/exoplayer2/e/e/d;->xo:J

    goto/16 :goto_24e

    :sswitch_112
    cmp-long p1, p2, v3

    if-nez p1, :cond_118

    goto/16 :goto_24e

    :cond_118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AESSettingsCipherMode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :sswitch_131
    const-wide/16 v3, 0x5

    cmp-long p1, p2, v3

    if-nez p1, :cond_139

    goto/16 :goto_24e

    :cond_139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContentEncAlgo "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :sswitch_152
    cmp-long p1, p2, v3

    if-nez p1, :cond_158

    goto/16 :goto_24e

    :cond_158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EBMLReadVersion "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :sswitch_171
    cmp-long p1, p2, v3

    if-ltz p1, :cond_17d

    const-wide/16 v3, 0x2

    cmp-long p1, p2, v3

    if-gtz p1, :cond_17d

    goto/16 :goto_24e

    :cond_17d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DocTypeReadVersion "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :sswitch_196
    const-wide/16 v3, 0x3

    cmp-long p1, p2, v3

    if-nez p1, :cond_19e

    goto/16 :goto_24e

    :cond_19e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContentCompAlgo "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :sswitch_1b7
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p3, p2

    invoke-static {p1, p3}, Lcom/applovin/exoplayer2/e/e/d$b;->a(Lcom/applovin/exoplayer2/e/e/d$b;I)I

    goto/16 :goto_24e

    :sswitch_1c1
    iput-boolean v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xH:Z

    goto/16 :goto_24e

    :sswitch_1c5
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xv:Z

    if-nez v0, :cond_24e

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cb(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xu:Lcom/applovin/exoplayer2/l/r;

    invoke-virtual {p1, p2, p3}, Lcom/applovin/exoplayer2/l/r;->bo(J)V

    iput-boolean v7, p0, Lcom/applovin/exoplayer2/e/e/d;->xv:Z

    goto/16 :goto_24e

    :sswitch_1d5
    long-to-int p1, p2

    iput p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xG:I

    goto/16 :goto_24e

    :sswitch_1da
    invoke-direct {p0, p2, p3}, Lcom/applovin/exoplayer2/e/e/d;->ap(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xs:J

    goto/16 :goto_24e

    :sswitch_1e2
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/applovin/exoplayer2/e/e/d$b;->xT:I

    goto :goto_24e

    :sswitch_1ea
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/applovin/exoplayer2/e/e/d$b;->height:I

    goto :goto_24e

    :sswitch_1f2
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cb(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xt:Lcom/applovin/exoplayer2/l/r;

    invoke-direct {p0, p2, p3}, Lcom/applovin/exoplayer2/e/e/d;->ap(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/applovin/exoplayer2/l/r;->bo(J)V

    goto :goto_24e

    :sswitch_1ff
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/applovin/exoplayer2/e/e/d$b;->dE:I

    goto :goto_24e

    :sswitch_207
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/applovin/exoplayer2/e/e/d$b;->dL:I

    goto :goto_24e

    :sswitch_20f
    invoke-direct {p0, p2, p3}, Lcom/applovin/exoplayer2/e/e/d;->ap(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xz:J

    goto :goto_24e

    :sswitch_216
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    cmp-long v1, p2, v3

    if-nez v1, :cond_21f

    const/4 v0, 0x1

    :cond_21f
    iput-boolean v0, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yE:Z

    goto :goto_24e

    :sswitch_222
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/applovin/exoplayer2/e/e/d$b;->bs:I

    goto :goto_24e

    :cond_22a
    cmp-long p1, p2, v3

    if-nez p1, :cond_22f

    goto :goto_24e

    :cond_22f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContentEncodingScope "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :cond_248
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-nez p1, :cond_24f

    :cond_24e
    :goto_24e
    return-void

    :cond_24f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContentEncodingOrder "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :sswitch_data_268
    .sparse-switch
        0x83 -> :sswitch_222
        0x88 -> :sswitch_216
        0x9b -> :sswitch_20f
        0x9f -> :sswitch_207
        0xb0 -> :sswitch_1ff
        0xb3 -> :sswitch_1f2
        0xba -> :sswitch_1ea
        0xd7 -> :sswitch_1e2
        0xe7 -> :sswitch_1da
        0xee -> :sswitch_1d5
        0xf1 -> :sswitch_1c5
        0xfb -> :sswitch_1c1
        0x41e7 -> :sswitch_1b7
        0x4254 -> :sswitch_196
        0x4285 -> :sswitch_171
        0x42f7 -> :sswitch_152
        0x47e1 -> :sswitch_131
        0x47e8 -> :sswitch_112
        0x53ac -> :sswitch_10b
        0x53b8 -> :sswitch_e3
        0x54b0 -> :sswitch_da
        0x54b2 -> :sswitch_d1
        0x54ba -> :sswitch_c8
        0x55aa -> :sswitch_bb
        0x55ee -> :sswitch_b2
        0x56aa -> :sswitch_aa
        0x56bb -> :sswitch_a2
        0x6264 -> :sswitch_99
        0x7671 -> :sswitch_73
        0x23e383 -> :sswitch_6a
        0x2ad7b1 -> :sswitch_66
    .end sparse-switch

    :pswitch_data_2e6
    .packed-switch 0x55b9
        :pswitch_50
        :pswitch_40
        :pswitch_2c
        :pswitch_23
        :pswitch_1a
    .end packed-switch
.end method

.method protected f(IJJ)V
    .registers 11
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/e/d;->io()V

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_96

    const/16 v0, 0xae

    const/4 v2, 0x0

    if-eq p1, v0, :cond_8e

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_8b

    const/16 v0, 0x4dbb

    const-wide/16 v3, -0x1

    if-eq p1, v0, :cond_85

    const/16 v0, 0x5035

    const/4 v1, 0x1

    if-eq p1, v0, :cond_7e

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_77

    const v0, 0x18538067

    if-eq p1, v0, :cond_60

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_51

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_31

    goto/16 :goto_98

    :cond_31
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xm:Z

    if-nez p1, :cond_98

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/e/d;->wY:Z

    if-eqz p1, :cond_42

    iget-wide p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xq:J

    cmp-long p3, p1, v3

    if-eqz p3, :cond_42

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xp:Z

    goto :goto_98

    :cond_42
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->vG:Lcom/applovin/exoplayer2/e/j;

    new-instance p2, Lcom/applovin/exoplayer2/e/v$b;

    iget-wide p3, p0, Lcom/applovin/exoplayer2/e/e/d;->fH:J

    invoke-direct {p2, p3, p4}, Lcom/applovin/exoplayer2/e/v$b;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/e/j;->a(Lcom/applovin/exoplayer2/e/v;)V

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xm:Z

    goto :goto_98

    :cond_51
    new-instance p1, Lcom/applovin/exoplayer2/l/r;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/l/r;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xt:Lcom/applovin/exoplayer2/l/r;

    new-instance p1, Lcom/applovin/exoplayer2/l/r;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/l/r;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xu:Lcom/applovin/exoplayer2/l/r;

    goto :goto_98

    :cond_60
    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/e/d;->xi:J

    cmp-long p1, v0, v3

    if-eqz p1, :cond_72

    cmp-long p1, v0, p2

    if-nez p1, :cond_6b

    goto :goto_72

    :cond_6b
    const-string p1, "Multiple Segment elements not supported"

    invoke-static {p1, v2}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :cond_72
    :goto_72
    iput-wide p2, p0, Lcom/applovin/exoplayer2/e/e/d;->xi:J

    iput-wide p4, p0, Lcom/applovin/exoplayer2/e/e/d;->xh:J

    goto :goto_98

    :cond_77
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    iput-boolean v1, p1, Lcom/applovin/exoplayer2/e/e/d$b;->yi:Z

    goto :goto_98

    :cond_7e
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/e/d;->cc(I)Lcom/applovin/exoplayer2/e/e/d$b;

    move-result-object p1

    iput-boolean v1, p1, Lcom/applovin/exoplayer2/e/e/d$b;->xX:Z

    goto :goto_98

    :cond_85
    const/4 p1, -0x1

    iput p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xn:I

    iput-wide v3, p0, Lcom/applovin/exoplayer2/e/e/d;->xo:J

    goto :goto_98

    :cond_8b
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xv:Z

    goto :goto_98

    :cond_8e
    new-instance p1, Lcom/applovin/exoplayer2/e/e/d$b;

    invoke-direct {p1, v2}, Lcom/applovin/exoplayer2/e/e/d$b;-><init>(Lcom/applovin/exoplayer2/e/e/d$1;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xl:Lcom/applovin/exoplayer2/e/e/d$b;

    goto :goto_98

    :cond_96
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/e/d;->xH:Z

    :cond_98
    :goto_98
    return-void
.end method

.method public o(JJ)V
    .registers 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xs:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/e/e/d;->xx:I

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->wW:Lcom/applovin/exoplayer2/e/e/c;

    invoke-interface {p2}, Lcom/applovin/exoplayer2/e/e/c;->Y()V

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->wL:Lcom/applovin/exoplayer2/e/e/f;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/e/f;->Y()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/e/d;->ix()V

    :goto_17
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->wX:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_2d

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/e/d;->wX:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/exoplayer2/e/e/d$b;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/e/d$b;->Y()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    :cond_2d
    return-void
.end method

.method public final release()V
    .registers 1

    return-void
.end method
