###### Class com.applovin.exoplayer2.m.h (com.applovin.exoplayer2.m.h)
.class public Lcom/applovin/exoplayer2/m/h;
.super Lcom/applovin/exoplayer2/f/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/m/h$b;,
        Lcom/applovin/exoplayer2/m/h$a;
    }
.end annotation


# static fields
.field private static final adL:[I

.field private static adM:Z

.field private static adN:Z


# instance fields
.field private final E:Landroid/content/Context;

.field private Hm:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final adO:Lcom/applovin/exoplayer2/m/m;

.field private final adP:Lcom/applovin/exoplayer2/m/n$a;

.field private final adQ:J

.field private final adR:I

.field private final adS:Z

.field private adT:Lcom/applovin/exoplayer2/m/h$a;

.field private adU:Z

.field private adV:Z

.field private adW:Lcom/applovin/exoplayer2/m/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private adX:Z

.field private adY:I

.field private adZ:Z

.field private aea:Z

.field private aeb:Z

.field private aec:J

.field private aed:J

.field private aee:J

.field private aef:I

.field private aeg:I

.field private aeh:I

.field private aei:J

.field private aej:J

.field private aek:I

.field private ael:I

.field private aem:I

.field private aen:F

.field private aeo:Lcom/applovin/exoplayer2/m/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private aep:I

.field aeq:Lcom/applovin/exoplayer2/m/h$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private aer:Lcom/applovin/exoplayer2/m/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hi:Z

.field private rE:J

.field private rF:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/applovin/exoplayer2/m/h;->adL:[I

    return-void

    :array_a
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/applovin/exoplayer2/f/g$b;Lcom/applovin/exoplayer2/f/k;JZLandroid/os/Handler;Lcom/applovin/exoplayer2/m/n;I)V
    .registers 16
    .param p7    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/applovin/exoplayer2/m/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x2

    const/high16 v5, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/applovin/exoplayer2/f/j;-><init>(ILcom/applovin/exoplayer2/f/g$b;Lcom/applovin/exoplayer2/f/k;ZF)V

    iput-wide p4, p0, Lcom/applovin/exoplayer2/m/h;->adQ:J

    iput p9, p0, Lcom/applovin/exoplayer2/m/h;->adR:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/h;->E:Landroid/content/Context;

    new-instance p2, Lcom/applovin/exoplayer2/m/m;

    invoke-direct {p2, p1}, Lcom/applovin/exoplayer2/m/m;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/m/h;->adO:Lcom/applovin/exoplayer2/m/m;

    new-instance p1, Lcom/applovin/exoplayer2/m/n$a;

    invoke-direct {p1, p7, p8}, Lcom/applovin/exoplayer2/m/n$a;-><init>(Landroid/os/Handler;Lcom/applovin/exoplayer2/m/n;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/h;->adP:Lcom/applovin/exoplayer2/m/n$a;

    invoke-static {}, Lcom/applovin/exoplayer2/m/h;->qt()Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/m/h;->adS:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/applovin/exoplayer2/m/h;->aed:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/applovin/exoplayer2/m/h;->aek:I

    iput p1, p0, Lcom/applovin/exoplayer2/m/h;->ael:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/applovin/exoplayer2/m/h;->aen:F

    const/4 p1, 0x1

    iput p1, p0, Lcom/applovin/exoplayer2/m/h;->adY:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/m/h;->aep:I

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/h;->qo()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/applovin/exoplayer2/f/k;JZLandroid/os/Handler;Lcom/applovin/exoplayer2/m/n;I)V
    .registers 19
    .param p6    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/applovin/exoplayer2/m/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v2, Lcom/applovin/exoplayer2/f/g$b;->Hp:Lcom/applovin/exoplayer2/f/g$b;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/applovin/exoplayer2/m/h;-><init>(Landroid/content/Context;Lcom/applovin/exoplayer2/f/g$b;Lcom/applovin/exoplayer2/f/k;JZLandroid/os/Handler;Lcom/applovin/exoplayer2/m/n;I)V

    return-void
.end method

.method private S(Ljava/lang/Object;)V
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    instance-of v0, p1, Landroid/view/Surface;

    if-eqz v0, :cond_7

    check-cast p1, Landroid/view/Surface;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    if-nez p1, :cond_26

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->adW:Lcom/applovin/exoplayer2/m/d;

    if-eqz v0, :cond_10

    move-object p1, v0

    goto :goto_26

    :cond_10
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->kb()Lcom/applovin/exoplayer2/f/i;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/m/h;->e(Lcom/applovin/exoplayer2/f/i;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object p1, p0, Lcom/applovin/exoplayer2/m/h;->E:Landroid/content/Context;

    iget-boolean v0, v0, Lcom/applovin/exoplayer2/f/i;->Hu:Z

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/m/d;->c(Landroid/content/Context;Z)Lcom/applovin/exoplayer2/m/d;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/h;->adW:Lcom/applovin/exoplayer2/m/d;

    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->Hm:Landroid/view/Surface;

    if-eq v0, p1, :cond_6e

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/h;->Hm:Landroid/view/Surface;

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->adO:Lcom/applovin/exoplayer2/m/m;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/m/m;->c(Landroid/view/Surface;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/m/h;->adX:Z

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->P()I

    move-result v0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->jZ()Lcom/applovin/exoplayer2/f/g;

    move-result-object v1

    if-eqz v1, :cond_54

    sget v2, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_4e

    if-eqz p1, :cond_4e

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/m/h;->adU:Z

    if-nez v2, :cond_4e

    invoke-virtual {p0, v1, p1}, Lcom/applovin/exoplayer2/m/h;->a(Lcom/applovin/exoplayer2/f/g;Landroid/view/Surface;)V

    goto :goto_54

    :cond_4e
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->kd()V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->jX()V

    :cond_54
    :goto_54
    if-eqz p1, :cond_67

    iget-object v1, p0, Lcom/applovin/exoplayer2/m/h;->adW:Lcom/applovin/exoplayer2/m/d;

    if-eq p1, v1, :cond_67

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/h;->qq()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/h;->ql()V

    const/4 p1, 0x2

    if-ne v0, p1, :cond_7a

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/h;->qk()V

    goto :goto_7a

    :cond_67
    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/h;->qo()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/h;->ql()V

    goto :goto_7a

    :cond_6e
    if-eqz p1, :cond_7a

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->adW:Lcom/applovin/exoplayer2/m/d;

    if-eq p1, v0, :cond_7a

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/h;->qq()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/h;->qn()V

    :cond_7a
    :goto_7a
    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;)I
    .registers 12

    iget v0, p1, Lcom/applovin/exoplayer2/v;->dE:I

    iget v1, p1, Lcom/applovin/exoplayer2/v;->height:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_c8

    if-ne v1, v2, :cond_b

    goto/16 :goto_c8

    :cond_b
    iget-object v3, p1, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    const-string v4, "video/dolby-vision"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "video/avc"

    const/4 v6, 0x1

    const-string v7, "video/hevc"

    const/4 v8, 0x2

    if-eqz v4, :cond_34

    invoke-static {p1}, Lcom/applovin/exoplayer2/f/l;->r(Lcom/applovin/exoplayer2/v;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_33

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v3, 0x200

    if-eq p1, v3, :cond_31

    if-eq p1, v6, :cond_31

    if-ne p1, v8, :cond_33

    :cond_31
    move-object v3, v5

    goto :goto_34

    :cond_33
    move-object v3, v7

    :cond_34
    :goto_34
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v4, 0x4

    const/4 v9, 0x3

    sparse-switch p1, :sswitch_data_ca

    :goto_40
    const/4 v6, -0x1

    goto :goto_7d

    :sswitch_42
    const-string p1, "video/x-vnd.on2.vp9"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    goto :goto_40

    :cond_4b
    const/4 v6, 0x5

    goto :goto_7d

    :sswitch_4d
    const-string p1, "video/x-vnd.on2.vp8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto :goto_40

    :cond_56
    const/4 v6, 0x4

    goto :goto_7d

    :sswitch_58
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    goto :goto_40

    :cond_5f
    const/4 v6, 0x3

    goto :goto_7d

    :sswitch_61
    const-string p1, "video/mp4v-es"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    goto :goto_40

    :cond_6a
    const/4 v6, 0x2

    goto :goto_7d

    :sswitch_6c
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7d

    goto :goto_40

    :sswitch_73
    const-string p1, "video/3gpp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7c

    goto :goto_40

    :cond_7c
    const/4 v6, 0x0

    :cond_7d
    :goto_7d
    packed-switch v6, :pswitch_data_e4

    return v2

    :pswitch_81
    sget-object p1, Lcom/applovin/exoplayer2/l/ai;->acY:Ljava/lang/String;

    const-string v3, "BRAVIA 4K 2015"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bb

    sget-object v3, Lcom/applovin/exoplayer2/l/ai;->acX:Ljava/lang/String;

    const-string v4, "Amazon"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    const-string v3, "KFSOWI"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bb

    const-string v3, "AFTS"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_aa

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/f/i;->Hu:Z

    if-eqz p0, :cond_aa

    goto :goto_bb

    :cond_aa
    const/16 p0, 0x10

    invoke-static {v0, p0}, Lcom/applovin/exoplayer2/l/ai;->N(II)I

    move-result p1

    invoke-static {v1, p0}, Lcom/applovin/exoplayer2/l/ai;->N(II)I

    move-result v0

    mul-int p1, p1, v0

    mul-int/lit8 p1, p1, 0x10

    mul-int/lit8 v0, p1, 0x10

    goto :goto_c1

    :cond_bb
    :goto_bb
    return v2

    :pswitch_bc
    mul-int v0, v0, v1

    goto :goto_c2

    :pswitch_bf
    mul-int v0, v0, v1

    :goto_c1
    const/4 v4, 0x2

    :goto_c2
    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v4, v4, 0x2

    div-int/2addr v0, v4

    return v0

    :cond_c8
    :goto_c8
    return v2

    nop

    :sswitch_data_ca
    .sparse-switch
        -0x63306f58 -> :sswitch_73
        -0x63185e82 -> :sswitch_6c
        0x46cdc642 -> :sswitch_61
        0x4f62373a -> :sswitch_58
        0x5f50bed8 -> :sswitch_4d
        0x5f50bed9 -> :sswitch_42
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_bf
        :pswitch_bc
        :pswitch_bf
        :pswitch_81
        :pswitch_bf
        :pswitch_bc
    .end packed-switch
.end method

.method private static a(Lcom/applovin/exoplayer2/f/k;Lcom/applovin/exoplayer2/v;ZZ)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/f/k;",
            "Lcom/applovin/exoplayer2/v;",
            "ZZ)",
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

    iget-object v0, p1, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-interface {p0, v0, p2, p3}, Lcom/applovin/exoplayer2/f/k;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/applovin/exoplayer2/f/l;->a(Ljava/util/List;Lcom/applovin/exoplayer2/v;)Ljava/util/List;

    move-result-object v1

    const-string v2, "video/dolby-vision"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {p1}, Lcom/applovin/exoplayer2/f/l;->r(Lcom/applovin/exoplayer2/v;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_47

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3e

    const/16 v0, 0x100

    if-ne p1, v0, :cond_30

    goto :goto_3e

    :cond_30
    const/16 v0, 0x200

    if-ne p1, v0, :cond_47

    const-string p1, "video/avc"

    invoke-interface {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/f/k;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_47

    :cond_3e
    :goto_3e
    const-string p1, "video/hevc"

    invoke-interface {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/f/k;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_47
    :goto_47
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(JJLcom/applovin/exoplayer2/v;)V
    .registers 13

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->aer:Lcom/applovin/exoplayer2/m/l;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->ka()Landroid/media/MediaFormat;

    move-result-object v6

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/applovin/exoplayer2/m/l;->a(JJLcom/applovin/exoplayer2/v;Landroid/media/MediaFormat;)V

    :cond_e
    return-void
.end method

.method private static a(Landroid/media/MediaFormat;I)V
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    const-string v0, "tunneled-playback"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v0, "audio-session-id"

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/f/g;[B)V
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "hdr10-plus-info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-interface {p0, v0}, Lcom/applovin/exoplayer2/f/g;->u(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/m/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/h;->qj()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/m/h;Lcom/applovin/exoplayer2/p;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/f/j;->b(Lcom/applovin/exoplayer2/p;)V

    return-void
.end method

.method private static b(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;)Landroid/graphics/Point;
    .registers 15

    iget v0, p1, Lcom/applovin/exoplayer2/v;->height:I

    iget v1, p1, Lcom/applovin/exoplayer2/v;->dE:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_9

    const/4 v3, 0x1

    goto :goto_a

    :cond_9
    const/4 v3, 0x0

    :goto_a
    if-eqz v3, :cond_e

    move v4, v0

    goto :goto_f

    :cond_e
    move v4, v1

    :goto_f
    if-eqz v3, :cond_12

    move v0, v1

    :cond_12
    int-to-float v1, v0

    int-to-float v5, v4

    div-float/2addr v1, v5

    sget-object v5, Lcom/applovin/exoplayer2/m/h;->adL:[I

    array-length v6, v5

    :goto_18
    const/4 v7, 0x0

    if-ge v2, v6, :cond_6f

    aget v8, v5, v2

    int-to-float v9, v8

    mul-float v9, v9, v1

    float-to-int v9, v9

    if-le v8, v4, :cond_6f

    if-gt v9, v0, :cond_26

    goto :goto_6f

    :cond_26
    sget v10, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_47

    if-eqz v3, :cond_30

    move v7, v9

    goto :goto_31

    :cond_30
    move v7, v8

    :goto_31
    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v8, v9

    :goto_35
    invoke-virtual {p0, v7, v8}, Lcom/applovin/exoplayer2/f/i;->D(II)Landroid/graphics/Point;

    move-result-object v7

    iget v8, p1, Lcom/applovin/exoplayer2/v;->dF:F

    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    float-to-double v11, v8

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/applovin/exoplayer2/f/i;->a(IID)Z

    move-result v8

    if-eqz v8, :cond_6c

    return-object v7

    :cond_47
    const/16 v10, 0x10

    :try_start_49
    invoke-static {v8, v10}, Lcom/applovin/exoplayer2/l/ai;->N(II)I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    invoke-static {v9, v10}, Lcom/applovin/exoplayer2/l/ai;->N(II)I

    move-result v9

    mul-int/lit8 v9, v9, 0x10

    mul-int v10, v8, v9

    invoke-static {}, Lcom/applovin/exoplayer2/f/l;->kz()I

    move-result v11

    if-gt v10, v11, :cond_6c

    new-instance p0, Landroid/graphics/Point;

    if-eqz v3, :cond_63

    move p1, v9

    goto :goto_64

    :cond_63
    move p1, v8

    :goto_64
    if-eqz v3, :cond_67

    goto :goto_68

    :cond_67
    move v8, v9

    :goto_68
    invoke-direct {p0, p1, v8}, Landroid/graphics/Point;-><init>(II)V
    :try_end_6b
    .catch Lcom/applovin/exoplayer2/f/l$b; {:try_start_49 .. :try_end_6b} :catch_6f

    return-object p0

    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :catch_6f
    :cond_6f
    :goto_6f
    return-object v7
.end method

.method private static bA(J)Z
    .registers 5

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static bB(J)Z
    .registers 5

    const-wide/32 v0, -0x7a120

    cmp-long v2, p0, v0

    if-gez v2, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method protected static c(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;)I
    .registers 5

    iget v0, p1, Lcom/applovin/exoplayer2/v;->dA:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    iget-object p0, p1, Lcom/applovin/exoplayer2/v;->dB:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_d
    if-ge v0, p0, :cond_1c

    iget-object v2, p1, Lcom/applovin/exoplayer2/v;->dB:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    iget p0, p1, Lcom/applovin/exoplayer2/v;->dA:I

    add-int/2addr p0, v1

    return p0

    :cond_20
    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/m/h;->a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;)I

    move-result p0

    return p0
.end method

.method private e(Lcom/applovin/exoplayer2/f/i;)Z
    .registers 4

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_20

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/m/h;->hi:Z

    if-nez v0, :cond_20

    iget-object v0, p1, Lcom/applovin/exoplayer2/f/i;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/m/h;->bo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-boolean p1, p1, Lcom/applovin/exoplayer2/f/i;->Hu:Z

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/applovin/exoplayer2/m/h;->E:Landroid/content/Context;

    invoke-static {p1}, Lcom/applovin/exoplayer2/m/d;->p(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_20

    :cond_1e
    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method

.method private qj()V
    .registers 1

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->kt()V

    return-void
.end method

.method private qk()V
    .registers 6

    iget-wide v0, p0, Lcom/applovin/exoplayer2/m/h;->adQ:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/exoplayer2/m/h;->adQ:J

    add-long/2addr v0, v2

    goto :goto_15

    :cond_10
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_15
    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/h;->aed:J

    return-void
.end method

.method private ql()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/m/h;->adZ:Z

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1a

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/m/h;->hi:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->jZ()Lcom/applovin/exoplayer2/f/g;

    move-result-object v0

    if-eqz v0, :cond_1a

    new-instance v1, Lcom/applovin/exoplayer2/m/h$b;

    invoke-direct {v1, p0, v0}, Lcom/applovin/exoplayer2/m/h$b;-><init>(Lcom/applovin/exoplayer2/m/h;Lcom/applovin/exoplayer2/f/g;)V

    iput-object v1, p0, Lcom/applovin/exoplayer2/m/h;->aeq:Lcom/applovin/exoplayer2/m/h$b;

    :cond_1a
    return-void
.end method

.method private qn()V
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/m/h;->adX:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->adP:Lcom/applovin/exoplayer2/m/n$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/m/h;->Hm:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/m/n$a;->T(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method private qo()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/h;->aeo:Lcom/applovin/exoplayer2/m/o;

    return-void
.end method

.method private qp()V
    .registers 6

    iget v0, p0, Lcom/applovin/exoplayer2/m/h;->aek:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v2, p0, Lcom/applovin/exoplayer2/m/h;->ael:I

    if-eq v2, v1, :cond_39

    :cond_9
    iget-object v1, p0, Lcom/applovin/exoplayer2/m/h;->aeo:Lcom/applovin/exoplayer2/m/o;

    if-eqz v1, :cond_25

    iget v2, v1, Lcom/applovin/exoplayer2/m/o;->dE:I

    if-ne v2, v0, :cond_25

    iget v0, v1, Lcom/applovin/exoplayer2/m/o;->height:I

    iget v2, p0, Lcom/applovin/exoplayer2/m/h;->ael:I

    if-ne v0, v2, :cond_25

    iget v0, v1, Lcom/applovin/exoplayer2/m/o;->afl:I

    iget v2, p0, Lcom/applovin/exoplayer2/m/h;->aem:I

    if-ne v0, v2, :cond_25

    iget v0, v1, Lcom/applovin/exoplayer2/m/o;->dH:F

    iget v1, p0, Lcom/applovin/exoplayer2/m/h;->aen:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_39

    :cond_25
    new-instance v0, Lcom/applovin/exoplayer2/m/o;

    iget v1, p0, Lcom/applovin/exoplayer2/m/h;->aek:I

    iget v2, p0, Lcom/applovin/exoplayer2/m/h;->ael:I

    iget v3, p0, Lcom/applovin/exoplayer2/m/h;->aem:I

    iget v4, p0, Lcom/applovin/exoplayer2/m/h;->aen:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/applovin/exoplayer2/m/o;-><init>(IIIF)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/h;->aeo:Lcom/applovin/exoplayer2/m/o;

    iget-object v1, p0, Lcom/applovin/exoplayer2/m/h;->adP:Lcom/applovin/exoplayer2/m/n$a;

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/m/n$a;->b(Lcom/applovin/exoplayer2/m/o;)V

    :cond_39
    return-void
.end method

.method private qq()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->aeo:Lcom/applovin/exoplayer2/m/o;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/applovin/exoplayer2/m/h;->adP:Lcom/applovin/exoplayer2/m/n$a;

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/m/n$a;->b(Lcom/applovin/exoplayer2/m/o;)V

    :cond_9
    return-void
.end method

.method private qr()V
    .registers 7

    iget v0, p0, Lcom/applovin/exoplayer2/m/h;->aef:I

    if-lez v0, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/exoplayer2/m/h;->aee:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/applovin/exoplayer2/m/h;->adP:Lcom/applovin/exoplayer2/m/n$a;

    iget v5, p0, Lcom/applovin/exoplayer2/m/h;->aef:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/applovin/exoplayer2/m/n$a;->l(IJ)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/applovin/exoplayer2/m/h;->aef:I

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/h;->aee:J

    :cond_18
    return-void
.end method

.method private qs()V
    .registers 5

    iget v0, p0, Lcom/applovin/exoplayer2/m/h;->rF:I

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/applovin/exoplayer2/m/h;->adP:Lcom/applovin/exoplayer2/m/n$a;

    iget-wide v2, p0, Lcom/applovin/exoplayer2/m/h;->rE:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/exoplayer2/m/n$a;->f(JI)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/h;->rE:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/m/h;->rF:I

    :cond_12
    return-void
.end method

.method private static qt()Z
    .registers 2

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->acX:Ljava/lang/String;

    const-string v1, "NVIDIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static qu()Z
    .registers 13

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/16 v5, 0x1c

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gt v0, v5, :cond_6d

    sget-object v10, Lcom/applovin/exoplayer2/l/ai;->acW:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_850

    :goto_1a
    const/4 v10, -0x1

    goto :goto_68

    :sswitch_1c
    const-string v11, "machuca"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_25

    goto :goto_1a

    :cond_25
    const/4 v10, 0x6

    goto :goto_68

    :sswitch_27
    const-string v11, "once"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_30

    goto :goto_1a

    :cond_30
    const/4 v10, 0x5

    goto :goto_68

    :sswitch_32
    const-string v11, "magnolia"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3b

    goto :goto_1a

    :cond_3b
    const/4 v10, 0x4

    goto :goto_68

    :sswitch_3d
    const-string v11, "oneday"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_46

    goto :goto_1a

    :cond_46
    const/4 v10, 0x3

    goto :goto_68

    :sswitch_48
    const-string v11, "dangalUHD"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_51

    goto :goto_1a

    :cond_51
    const/4 v10, 0x2

    goto :goto_68

    :sswitch_53
    const-string v11, "dangalFHD"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5c

    goto :goto_1a

    :cond_5c
    const/4 v10, 0x1

    goto :goto_68

    :sswitch_5e
    const-string v11, "dangal"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_67

    goto :goto_1a

    :cond_67
    const/4 v10, 0x0

    :goto_68
    packed-switch v10, :pswitch_data_86e

    goto :goto_6d

    :pswitch_6c
    return v9

    :cond_6d
    :goto_6d
    const/16 v10, 0x1b

    if-gt v0, v10, :cond_7c

    sget-object v11, Lcom/applovin/exoplayer2/l/ai;->acW:Ljava/lang/String;

    const-string v12, "HWEML"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7c

    return v9

    :cond_7c
    const/16 v11, 0x1a

    if-gt v0, v11, :cond_84e

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->acW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_880

    :goto_8c
    const/4 v1, -0x1

    goto/16 :goto_81a

    :sswitch_8f
    const-string v1, "HWWAS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto :goto_8c

    :cond_98
    const/16 v1, 0x8b

    goto/16 :goto_81a

    :sswitch_9c
    const-string v1, "HWVNS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    goto :goto_8c

    :cond_a5
    const/16 v1, 0x8a

    goto/16 :goto_81a

    :sswitch_a9
    const-string v1, "ELUGA_Prim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    goto :goto_8c

    :cond_b2
    const/16 v1, 0x89

    goto/16 :goto_81a

    :sswitch_b6
    const-string v1, "ELUGA_Note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bf

    goto :goto_8c

    :cond_bf
    const/16 v1, 0x88

    goto/16 :goto_81a

    :sswitch_c3
    const-string v1, "ASUS_X00AD_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cc

    goto :goto_8c

    :cond_cc
    const/16 v1, 0x87

    goto/16 :goto_81a

    :sswitch_d0
    const-string v1, "HWCAM-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d9

    goto :goto_8c

    :cond_d9
    const/16 v1, 0x86

    goto/16 :goto_81a

    :sswitch_dd
    const-string v1, "HWBLN-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e6

    goto :goto_8c

    :cond_e6
    const/16 v1, 0x85

    goto/16 :goto_81a

    :sswitch_ea
    const-string v1, "DM-01K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    goto :goto_8c

    :cond_f3
    const/16 v1, 0x84

    goto/16 :goto_81a

    :sswitch_f7
    const-string v1, "BRAVIA_ATV3_4K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    goto :goto_8c

    :cond_100
    const/16 v1, 0x83

    goto/16 :goto_81a

    :sswitch_104
    const-string v1, "Infinix-X572"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    goto/16 :goto_8c

    :cond_10e
    const/16 v1, 0x82

    goto/16 :goto_81a

    :sswitch_112
    const-string v1, "PB2-670M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    goto/16 :goto_8c

    :cond_11c
    const/16 v1, 0x81

    goto/16 :goto_81a

    :sswitch_120
    const-string v1, "santoni"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12a

    goto/16 :goto_8c

    :cond_12a
    const/16 v1, 0x80

    goto/16 :goto_81a

    :sswitch_12e
    const-string v1, "iball8735_9806"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_138

    goto/16 :goto_8c

    :cond_138
    const/16 v1, 0x7f

    goto/16 :goto_81a

    :sswitch_13c
    const-string v1, "CPH1715"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_146

    goto/16 :goto_8c

    :cond_146
    const/16 v1, 0x7e

    goto/16 :goto_81a

    :sswitch_14a
    const-string v1, "CPH1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_154

    goto/16 :goto_8c

    :cond_154
    const/16 v1, 0x7d

    goto/16 :goto_81a

    :sswitch_158
    const-string v1, "woods_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_162

    goto/16 :goto_8c

    :cond_162
    const/16 v1, 0x7c

    goto/16 :goto_81a

    :sswitch_166
    const-string v1, "htc_e56ml_dtul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_170

    goto/16 :goto_8c

    :cond_170
    const/16 v1, 0x7b

    goto/16 :goto_81a

    :sswitch_174
    const-string v1, "EverStar_S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17e

    goto/16 :goto_8c

    :cond_17e
    const/16 v1, 0x7a

    goto/16 :goto_81a

    :sswitch_182
    const-string v1, "hwALE-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18c

    goto/16 :goto_8c

    :cond_18c
    const/16 v1, 0x79

    goto/16 :goto_81a

    :sswitch_190
    const-string v1, "itel_S41"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19a

    goto/16 :goto_8c

    :cond_19a
    const/16 v1, 0x78

    goto/16 :goto_81a

    :sswitch_19e
    const-string v1, "LS-5017"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a8

    goto/16 :goto_8c

    :cond_1a8
    const/16 v1, 0x77

    goto/16 :goto_81a

    :sswitch_1ac
    const-string v1, "panell_d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b6

    goto/16 :goto_8c

    :cond_1b6
    const/16 v1, 0x76

    goto/16 :goto_81a

    :sswitch_1ba
    const-string v1, "j2xlteins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c4

    goto/16 :goto_8c

    :cond_1c4
    const/16 v1, 0x75

    goto/16 :goto_81a

    :sswitch_1c8
    const-string v1, "A7000plus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d2

    goto/16 :goto_8c

    :cond_1d2
    const/16 v1, 0x74

    goto/16 :goto_81a

    :sswitch_1d6
    const-string v1, "manning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e0

    goto/16 :goto_8c

    :cond_1e0
    const/16 v1, 0x73

    goto/16 :goto_81a

    :sswitch_1e4
    const-string v1, "GIONEE_WBL7519"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ee

    goto/16 :goto_8c

    :cond_1ee
    const/16 v1, 0x72

    goto/16 :goto_81a

    :sswitch_1f2
    const-string v1, "GIONEE_WBL7365"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fc

    goto/16 :goto_8c

    :cond_1fc
    const/16 v1, 0x71

    goto/16 :goto_81a

    :sswitch_200
    const-string v1, "GIONEE_WBL5708"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20a

    goto/16 :goto_8c

    :cond_20a
    const/16 v1, 0x70

    goto/16 :goto_81a

    :sswitch_20e
    const-string v1, "QM16XE_U"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_218

    goto/16 :goto_8c

    :cond_218
    const/16 v1, 0x6f

    goto/16 :goto_81a

    :sswitch_21c
    const-string v1, "Pixi5-10_4G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_226

    goto/16 :goto_8c

    :cond_226
    const/16 v1, 0x6e

    goto/16 :goto_81a

    :sswitch_22a
    const-string v1, "TB3-850M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_234

    goto/16 :goto_8c

    :cond_234
    const/16 v1, 0x6d

    goto/16 :goto_81a

    :sswitch_238
    const-string v1, "TB3-850F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_242

    goto/16 :goto_8c

    :cond_242
    const/16 v1, 0x6c

    goto/16 :goto_81a

    :sswitch_246
    const-string v1, "TB3-730X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_250

    goto/16 :goto_8c

    :cond_250
    const/16 v1, 0x6b

    goto/16 :goto_81a

    :sswitch_254
    const-string v1, "TB3-730F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25e

    goto/16 :goto_8c

    :cond_25e
    const/16 v1, 0x6a

    goto/16 :goto_81a

    :sswitch_262
    const-string v1, "A7020a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26c

    goto/16 :goto_8c

    :cond_26c
    const/16 v1, 0x69

    goto/16 :goto_81a

    :sswitch_270
    const-string v1, "A7010a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27a

    goto/16 :goto_8c

    :cond_27a
    const/16 v1, 0x68

    goto/16 :goto_81a

    :sswitch_27e
    const-string v1, "griffin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    goto/16 :goto_8c

    :cond_288
    const/16 v1, 0x67

    goto/16 :goto_81a

    :sswitch_28c
    const-string v1, "marino_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_296

    goto/16 :goto_8c

    :cond_296
    const/16 v1, 0x66

    goto/16 :goto_81a

    :sswitch_29a
    const-string v1, "CPY83_I00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a4

    goto/16 :goto_8c

    :cond_2a4
    const/16 v1, 0x65

    goto/16 :goto_81a

    :sswitch_2a8
    const-string v1, "A2016a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b2

    goto/16 :goto_8c

    :cond_2b2
    const/16 v1, 0x64

    goto/16 :goto_81a

    :sswitch_2b6
    const-string v1, "le_x6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c0

    goto/16 :goto_8c

    :cond_2c0
    const/16 v1, 0x63

    goto/16 :goto_81a

    :sswitch_2c4
    const-string v1, "l5460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ce

    goto/16 :goto_8c

    :cond_2ce
    const/16 v1, 0x62

    goto/16 :goto_81a

    :sswitch_2d2
    const-string v1, "i9031"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2dc

    goto/16 :goto_8c

    :cond_2dc
    const/16 v1, 0x61

    goto/16 :goto_81a

    :sswitch_2e0
    const-string v1, "X3_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ea

    goto/16 :goto_8c

    :cond_2ea
    const/16 v1, 0x60

    goto/16 :goto_81a

    :sswitch_2ee
    const-string v1, "V23GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f8

    goto/16 :goto_8c

    :cond_2f8
    const/16 v1, 0x5f

    goto/16 :goto_81a

    :sswitch_2fc
    const-string v1, "Q4310"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_306

    goto/16 :goto_8c

    :cond_306
    const/16 v1, 0x5e

    goto/16 :goto_81a

    :sswitch_30a
    const-string v1, "Q4260"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_314

    goto/16 :goto_8c

    :cond_314
    const/16 v1, 0x5d

    goto/16 :goto_81a

    :sswitch_318
    const-string v1, "PRO7S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_322

    goto/16 :goto_8c

    :cond_322
    const/16 v1, 0x5c

    goto/16 :goto_81a

    :sswitch_326
    const-string v1, "F3311"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_330

    goto/16 :goto_8c

    :cond_330
    const/16 v1, 0x5b

    goto/16 :goto_81a

    :sswitch_334
    const-string v1, "F3215"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33e

    goto/16 :goto_8c

    :cond_33e
    const/16 v1, 0x5a

    goto/16 :goto_81a

    :sswitch_342
    const-string v1, "F3213"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34c

    goto/16 :goto_8c

    :cond_34c
    const/16 v1, 0x59

    goto/16 :goto_81a

    :sswitch_350
    const-string v1, "F3211"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35a

    goto/16 :goto_8c

    :cond_35a
    const/16 v1, 0x58

    goto/16 :goto_81a

    :sswitch_35e
    const-string v1, "F3116"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_368

    goto/16 :goto_8c

    :cond_368
    const/16 v1, 0x57

    goto/16 :goto_81a

    :sswitch_36c
    const-string v1, "F3113"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_376

    goto/16 :goto_8c

    :cond_376
    const/16 v1, 0x56

    goto/16 :goto_81a

    :sswitch_37a
    const-string v1, "F3111"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_384

    goto/16 :goto_8c

    :cond_384
    const/16 v1, 0x55

    goto/16 :goto_81a

    :sswitch_388
    const-string v1, "E5643"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_392

    goto/16 :goto_8c

    :cond_392
    const/16 v1, 0x54

    goto/16 :goto_81a

    :sswitch_396
    const-string v1, "A1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a0

    goto/16 :goto_8c

    :cond_3a0
    const/16 v1, 0x53

    goto/16 :goto_81a

    :sswitch_3a4
    const-string v1, "Aura_Note_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3ae

    goto/16 :goto_8c

    :cond_3ae
    const/16 v1, 0x52

    goto/16 :goto_81a

    :sswitch_3b2
    const-string v1, "602LV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3bc

    goto/16 :goto_8c

    :cond_3bc
    const/16 v1, 0x51

    goto/16 :goto_81a

    :sswitch_3c0
    const-string v1, "601LV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3ca

    goto/16 :goto_8c

    :cond_3ca
    const/16 v1, 0x50

    goto/16 :goto_81a

    :sswitch_3ce
    const-string v1, "MEIZU_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d8

    goto/16 :goto_8c

    :cond_3d8
    const/16 v1, 0x4f

    goto/16 :goto_81a

    :sswitch_3dc
    const-string v1, "p212"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e6

    goto/16 :goto_8c

    :cond_3e6
    const/16 v1, 0x4e

    goto/16 :goto_81a

    :sswitch_3ea
    const-string v1, "mido"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f4

    goto/16 :goto_8c

    :cond_3f4
    const/16 v1, 0x4d

    goto/16 :goto_81a

    :sswitch_3f8
    const-string v1, "kate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_402

    goto/16 :goto_8c

    :cond_402
    const/16 v1, 0x4c

    goto/16 :goto_81a

    :sswitch_406
    const-string v1, "fugu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_410

    goto/16 :goto_8c

    :cond_410
    const/16 v1, 0x4b

    goto/16 :goto_81a

    :sswitch_414
    const-string v1, "XE2X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41e

    goto/16 :goto_8c

    :cond_41e
    const/16 v1, 0x4a

    goto/16 :goto_81a

    :sswitch_422
    const-string v1, "Q427"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42c

    goto/16 :goto_8c

    :cond_42c
    const/16 v1, 0x49

    goto/16 :goto_81a

    :sswitch_430
    const-string v1, "Q350"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43a

    goto/16 :goto_8c

    :cond_43a
    const/16 v1, 0x48

    goto/16 :goto_81a

    :sswitch_43e
    const-string v1, "P681"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_448

    goto/16 :goto_8c

    :cond_448
    const/16 v1, 0x47

    goto/16 :goto_81a

    :sswitch_44c
    const-string v1, "F04J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_456

    goto/16 :goto_8c

    :cond_456
    const/16 v1, 0x46

    goto/16 :goto_81a

    :sswitch_45a
    const-string v1, "F04H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_464

    goto/16 :goto_8c

    :cond_464
    const/16 v1, 0x45

    goto/16 :goto_81a

    :sswitch_468
    const-string v1, "F03H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_472

    goto/16 :goto_8c

    :cond_472
    const/16 v1, 0x44

    goto/16 :goto_81a

    :sswitch_476
    const-string v1, "F02H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_480

    goto/16 :goto_8c

    :cond_480
    const/16 v1, 0x43

    goto/16 :goto_81a

    :sswitch_484
    const-string v1, "F01J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48e

    goto/16 :goto_8c

    :cond_48e
    const/16 v1, 0x42

    goto/16 :goto_81a

    :sswitch_492
    const-string v1, "F01H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49c

    goto/16 :goto_8c

    :cond_49c
    const/16 v1, 0x41

    goto/16 :goto_81a

    :sswitch_4a0
    const-string v1, "1714"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4aa

    goto/16 :goto_8c

    :cond_4aa
    const/16 v1, 0x40

    goto/16 :goto_81a

    :sswitch_4ae
    const-string v1, "1713"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b8

    goto/16 :goto_8c

    :cond_4b8
    const/16 v1, 0x3f

    goto/16 :goto_81a

    :sswitch_4bc
    const-string v1, "1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c6

    goto/16 :goto_8c

    :cond_4c6
    const/16 v1, 0x3e

    goto/16 :goto_81a

    :sswitch_4ca
    const-string v1, "flo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d4

    goto/16 :goto_8c

    :cond_4d4
    const/16 v1, 0x3d

    goto/16 :goto_81a

    :sswitch_4d8
    const-string v1, "deb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e2

    goto/16 :goto_8c

    :cond_4e2
    const/16 v1, 0x3c

    goto/16 :goto_81a

    :sswitch_4e6
    const-string v1, "cv3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f0

    goto/16 :goto_8c

    :cond_4f0
    const/16 v1, 0x3b

    goto/16 :goto_81a

    :sswitch_4f4
    const-string v1, "cv1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4fe

    goto/16 :goto_8c

    :cond_4fe
    const/16 v1, 0x3a

    goto/16 :goto_81a

    :sswitch_502
    const-string v1, "Z80"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50c

    goto/16 :goto_8c

    :cond_50c
    const/16 v1, 0x39

    goto/16 :goto_81a

    :sswitch_510
    const-string v1, "QX1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51a

    goto/16 :goto_8c

    :cond_51a
    const/16 v1, 0x38

    goto/16 :goto_81a

    :sswitch_51e
    const-string v1, "PLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_528

    goto/16 :goto_8c

    :cond_528
    const/16 v1, 0x37

    goto/16 :goto_81a

    :sswitch_52c
    const-string v1, "P85"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_536

    goto/16 :goto_8c

    :cond_536
    const/16 v1, 0x36

    goto/16 :goto_81a

    :sswitch_53a
    const-string v1, "MX6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_544

    goto/16 :goto_8c

    :cond_544
    const/16 v1, 0x35

    goto/16 :goto_81a

    :sswitch_548
    const-string v1, "M5c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_552

    goto/16 :goto_8c

    :cond_552
    const/16 v1, 0x34

    goto/16 :goto_81a

    :sswitch_556
    const-string v1, "M04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_560

    goto/16 :goto_8c

    :cond_560
    const/16 v1, 0x33

    goto/16 :goto_81a

    :sswitch_564
    const-string v1, "JGZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56e

    goto/16 :goto_8c

    :cond_56e
    const/16 v1, 0x32

    goto/16 :goto_81a

    :sswitch_572
    const-string v1, "mh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57c

    goto/16 :goto_8c

    :cond_57c
    const/16 v1, 0x31

    goto/16 :goto_81a

    :sswitch_580
    const-string v1, "b5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58a

    goto/16 :goto_8c

    :cond_58a
    const/16 v1, 0x30

    goto/16 :goto_81a

    :sswitch_58e
    const-string v1, "V5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_598

    goto/16 :goto_8c

    :cond_598
    const/16 v1, 0x2f

    goto/16 :goto_81a

    :sswitch_59c
    const-string v1, "V1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a6

    goto/16 :goto_8c

    :cond_5a6
    const/16 v1, 0x2e

    goto/16 :goto_81a

    :sswitch_5aa
    const-string v1, "Q5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b4

    goto/16 :goto_8c

    :cond_5b4
    const/16 v1, 0x2d

    goto/16 :goto_81a

    :sswitch_5b8
    const-string v1, "C1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c2

    goto/16 :goto_8c

    :cond_5c2
    const/16 v1, 0x2c

    goto/16 :goto_81a

    :sswitch_5c6
    const-string v1, "woods_fn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d0

    goto/16 :goto_8c

    :cond_5d0
    const/16 v1, 0x2b

    goto/16 :goto_81a

    :sswitch_5d4
    const-string v1, "ELUGA_A3_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5de

    goto/16 :goto_8c

    :cond_5de
    const/16 v1, 0x2a

    goto/16 :goto_81a

    :sswitch_5e2
    const-string v1, "Z12_PRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ec

    goto/16 :goto_8c

    :cond_5ec
    const/16 v1, 0x29

    goto/16 :goto_81a

    :sswitch_5f0
    const-string v1, "BLACK-1X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5fa

    goto/16 :goto_8c

    :cond_5fa
    const/16 v1, 0x28

    goto/16 :goto_81a

    :sswitch_5fe
    const-string v1, "taido_row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_608

    goto/16 :goto_8c

    :cond_608
    const/16 v1, 0x27

    goto/16 :goto_81a

    :sswitch_60c
    const-string v1, "Pixi4-7_3G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_616

    goto/16 :goto_8c

    :cond_616
    const/16 v1, 0x26

    goto/16 :goto_81a

    :sswitch_61a
    const-string v1, "GIONEE_GBL7360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_624

    goto/16 :goto_8c

    :cond_624
    const/16 v1, 0x25

    goto/16 :goto_81a

    :sswitch_628
    const-string v1, "GiONEE_CBL7513"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_632

    goto/16 :goto_8c

    :cond_632
    const/16 v1, 0x24

    goto/16 :goto_81a

    :sswitch_636
    const-string v1, "OnePlus5T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_640

    goto/16 :goto_8c

    :cond_640
    const/16 v1, 0x23

    goto/16 :goto_81a

    :sswitch_644
    const-string v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64e

    goto/16 :goto_8c

    :cond_64e
    const/16 v1, 0x22

    goto/16 :goto_81a

    :sswitch_652
    const-string v1, "watson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65c

    goto/16 :goto_8c

    :cond_65c
    const/16 v1, 0x21

    goto/16 :goto_81a

    :sswitch_660
    const-string v1, "SVP-DTV15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66a

    goto/16 :goto_8c

    :cond_66a
    const/16 v1, 0x20

    goto/16 :goto_81a

    :sswitch_66e
    const-string v1, "A7000-a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_678

    goto/16 :goto_8c

    :cond_678
    const/16 v1, 0x1f

    goto/16 :goto_81a

    :sswitch_67c
    const-string v1, "nicklaus_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_686

    goto/16 :goto_8c

    :cond_686
    const/16 v1, 0x1e

    goto/16 :goto_81a

    :sswitch_68a
    const-string v1, "tcl_eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_694

    goto/16 :goto_8c

    :cond_694
    const/16 v1, 0x1d

    goto/16 :goto_81a

    :sswitch_698
    const-string v1, "ELUGA_Ray_X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a2

    goto/16 :goto_8c

    :cond_6a2
    const/16 v1, 0x1c

    goto/16 :goto_81a

    :sswitch_6a6
    const-string v1, "s905x018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b0

    goto/16 :goto_8c

    :cond_6b0
    const/16 v1, 0x1b

    goto/16 :goto_81a

    :sswitch_6b4
    const-string v1, "A10-70L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6be

    goto/16 :goto_8c

    :cond_6be
    const/16 v1, 0x1a

    goto/16 :goto_81a

    :sswitch_6c2
    const-string v1, "A10-70F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6cc

    goto/16 :goto_8c

    :cond_6cc
    const/16 v1, 0x19

    goto/16 :goto_81a

    :sswitch_6d0
    const-string v1, "namath"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6da

    goto/16 :goto_8c

    :cond_6da
    const/16 v1, 0x18

    goto/16 :goto_81a

    :sswitch_6de
    const-string v1, "Slate_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e8

    goto/16 :goto_8c

    :cond_6e8
    const/16 v1, 0x17

    goto/16 :goto_81a

    :sswitch_6ec
    const-string v1, "iris60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f6

    goto/16 :goto_8c

    :cond_6f6
    const/16 v1, 0x16

    goto/16 :goto_81a

    :sswitch_6fa
    const-string v1, "BRAVIA_ATV2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_704

    goto/16 :goto_8c

    :cond_704
    const/16 v1, 0x15

    goto/16 :goto_81a

    :sswitch_708
    const-string v1, "GiONEE_GBL7319"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_712

    goto/16 :goto_8c

    :cond_712
    const/16 v1, 0x14

    goto/16 :goto_81a

    :sswitch_716
    const-string v1, "panell_dt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_720

    goto/16 :goto_8c

    :cond_720
    const/16 v1, 0x13

    goto/16 :goto_81a

    :sswitch_724
    const-string v1, "panell_ds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72e

    goto/16 :goto_8c

    :cond_72e
    const/16 v1, 0x12

    goto/16 :goto_81a

    :sswitch_732
    const-string v1, "panell_dl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73c

    goto/16 :goto_8c

    :cond_73c
    const/16 v1, 0x11

    goto/16 :goto_81a

    :sswitch_740
    const-string v1, "vernee_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74a

    goto/16 :goto_8c

    :cond_74a
    const/16 v1, 0x10

    goto/16 :goto_81a

    :sswitch_74e
    const-string v1, "pacificrim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_758

    goto/16 :goto_8c

    :cond_758
    const/16 v1, 0xf

    goto/16 :goto_81a

    :sswitch_75c
    const-string v1, "Phantom6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_766

    goto/16 :goto_8c

    :cond_766
    const/16 v1, 0xe

    goto/16 :goto_81a

    :sswitch_76a
    const-string v1, "ComioS1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_774

    goto/16 :goto_8c

    :cond_774
    const/16 v1, 0xd

    goto/16 :goto_81a

    :sswitch_778
    const-string v1, "XT1663"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_782

    goto/16 :goto_8c

    :cond_782
    const/16 v1, 0xc

    goto/16 :goto_81a

    :sswitch_786
    const-string v1, "RAIJIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_790

    goto/16 :goto_8c

    :cond_790
    const/16 v1, 0xb

    goto/16 :goto_81a

    :sswitch_794
    const-string v1, "AquaPowerM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79e

    goto/16 :goto_8c

    :cond_79e
    const/16 v1, 0xa

    goto/16 :goto_81a

    :sswitch_7a2
    const-string v1, "PGN611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7ac

    goto/16 :goto_8c

    :cond_7ac
    const/16 v1, 0x9

    goto/16 :goto_81a

    :sswitch_7b0
    const-string v1, "PGN610"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7ba

    goto/16 :goto_8c

    :cond_7ba
    const/16 v1, 0x8

    goto :goto_81a

    :sswitch_7bd
    const-string v1, "PGN528"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c7

    goto/16 :goto_8c

    :cond_7c7
    const/4 v1, 0x7

    goto :goto_81a

    :sswitch_7c9
    const-string v2, "NX573J"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81a

    goto/16 :goto_8c

    :sswitch_7d3
    const-string v1, "NX541J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7dd

    goto/16 :goto_8c

    :cond_7dd
    const/4 v1, 0x5

    goto :goto_81a

    :sswitch_7df
    const-string v1, "CP8676_I02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e9

    goto/16 :goto_8c

    :cond_7e9
    const/4 v1, 0x4

    goto :goto_81a

    :sswitch_7eb
    const-string v1, "K50a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f5

    goto/16 :goto_8c

    :cond_7f5
    const/4 v1, 0x3

    goto :goto_81a

    :sswitch_7f7
    const-string v1, "GIONEE_SWW1631"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_801

    goto/16 :goto_8c

    :cond_801
    const/4 v1, 0x2

    goto :goto_81a

    :sswitch_803
    const-string v1, "GIONEE_SWW1627"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80d

    goto/16 :goto_8c

    :cond_80d
    const/4 v1, 0x1

    goto :goto_81a

    :sswitch_80f
    const-string v1, "GIONEE_SWW1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_819

    goto/16 :goto_8c

    :cond_819
    const/4 v1, 0x0

    :cond_81a
    :goto_81a
    packed-switch v1, :pswitch_data_ab2

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->acY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_bce

    :goto_829
    const/4 v6, -0x1

    goto :goto_849

    :sswitch_82b
    const-string v1, "AFTN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_849

    goto :goto_829

    :sswitch_834
    const-string v1, "AFTA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83d

    goto :goto_829

    :cond_83d
    const/4 v6, 0x1

    goto :goto_849

    :sswitch_83f
    const-string v1, "JSN-L21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_848

    goto :goto_829

    :cond_848
    const/4 v6, 0x0

    :cond_849
    :goto_849
    packed-switch v6, :pswitch_data_bdc

    goto :goto_84e

    :pswitch_84d
    return v9

    :cond_84e
    :goto_84e
    return v8

    nop

    :sswitch_data_850
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_5e
        -0x48b8f57f -> :sswitch_53
        -0x48b8bd30 -> :sswitch_48
        -0x3c588c8a -> :sswitch_3d
        -0x3de1850 -> :sswitch_32
        0x341e81 -> :sswitch_27
        0x31316ffa -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_86e
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
    .end packed-switch

    :sswitch_data_880
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_80f
        -0x7fd6c381 -> :sswitch_803
        -0x7fd6c368 -> :sswitch_7f7
        -0x7d026749 -> :sswitch_7eb
        -0x78929d6a -> :sswitch_7df
        -0x75f50a1e -> :sswitch_7d3
        -0x75f4fe9d -> :sswitch_7c9
        -0x736f875c -> :sswitch_7bd
        -0x736f83c2 -> :sswitch_7b0
        -0x736f83c1 -> :sswitch_7a2
        -0x7327ce1c -> :sswitch_794
        -0x705c574b -> :sswitch_786
        -0x651ebb62 -> :sswitch_778
        -0x6423293b -> :sswitch_76a
        -0x604f5117 -> :sswitch_75c
        -0x5f691e13 -> :sswitch_74e
        -0x5ca40cc4 -> :sswitch_740
        -0x58520ec1 -> :sswitch_732
        -0x58520eba -> :sswitch_724
        -0x58520eb9 -> :sswitch_716
        -0x4eaed329 -> :sswitch_708
        -0x4892fb4f -> :sswitch_6fa
        -0x465b3df3 -> :sswitch_6ec
        -0x43e6c939 -> :sswitch_6de
        -0x3ec0fcc5 -> :sswitch_6d0
        -0x3b33cca0 -> :sswitch_6c2
        -0x3b33cc9a -> :sswitch_6b4
        -0x398ae3f6 -> :sswitch_6a6
        -0x391f0fb4 -> :sswitch_698
        -0x346837ae -> :sswitch_68a
        -0x323788e3 -> :sswitch_67c
        -0x30f57652 -> :sswitch_66e
        -0x2f88a116 -> :sswitch_660
        -0x2f61ed98 -> :sswitch_652
        -0x2efd0837 -> :sswitch_644
        -0x2e9e9441 -> :sswitch_636
        -0x2247b8b1 -> :sswitch_628
        -0x1f0fa2b7 -> :sswitch_61a
        -0x19af3b41 -> :sswitch_60c
        -0x114fad3e -> :sswitch_5fe
        -0x10dae90b -> :sswitch_5f0
        -0x1084b7b7 -> :sswitch_5e2
        -0xa5988e9 -> :sswitch_5d4
        -0x35f9fbf -> :sswitch_5c6
        0x84e -> :sswitch_5b8
        0xa04 -> :sswitch_5aa
        0xa9b -> :sswitch_59c
        0xa9f -> :sswitch_58e
        0xc13 -> :sswitch_580
        0xd9b -> :sswitch_572
        0x11ebd -> :sswitch_564
        0x12711 -> :sswitch_556
        0x127db -> :sswitch_548
        0x12beb -> :sswitch_53a
        0x1334d -> :sswitch_52c
        0x135c9 -> :sswitch_51e
        0x13aea -> :sswitch_510
        0x158d2 -> :sswitch_502
        0x1821e -> :sswitch_4f4
        0x18220 -> :sswitch_4e6
        0x18401 -> :sswitch_4d8
        0x18c69 -> :sswitch_4ca
        0x1716e6 -> :sswitch_4bc
        0x171ac8 -> :sswitch_4ae
        0x171ac9 -> :sswitch_4a0
        0x208c61 -> :sswitch_492
        0x208c63 -> :sswitch_484
        0x208c80 -> :sswitch_476
        0x208c9f -> :sswitch_468
        0x208cbe -> :sswitch_45a
        0x208cc0 -> :sswitch_44c
        0x252f5f -> :sswitch_43e
        0x25981d -> :sswitch_430
        0x259b88 -> :sswitch_422
        0x290a13 -> :sswitch_414
        0x3021fd -> :sswitch_406
        0x321e47 -> :sswitch_3f8
        0x332327 -> :sswitch_3ea
        0x33ab63 -> :sswitch_3dc
        0x27691fb -> :sswitch_3ce
        0x30f8881 -> :sswitch_3c0
        0x30f8c42 -> :sswitch_3b2
        0x349f581 -> :sswitch_3a4
        0x3ab0ea7 -> :sswitch_396
        0x3e53ea5 -> :sswitch_388
        0x3f25a44 -> :sswitch_37a
        0x3f25a46 -> :sswitch_36c
        0x3f25a49 -> :sswitch_35e
        0x3f25e05 -> :sswitch_350
        0x3f25e07 -> :sswitch_342
        0x3f25e09 -> :sswitch_334
        0x3f261c6 -> :sswitch_326
        0x48dce49 -> :sswitch_318
        0x48dd589 -> :sswitch_30a
        0x48dd8af -> :sswitch_2fc
        0x4d36832 -> :sswitch_2ee
        0x4f0b0e7 -> :sswitch_2e0
        0x5e2479e -> :sswitch_2d2
        0x60acc05 -> :sswitch_2c4
        0x6214744 -> :sswitch_2b6
        0x9d91379 -> :sswitch_2a8
        0xadc0551 -> :sswitch_29a
        0xea056b3 -> :sswitch_28c
        0x1121dbc3 -> :sswitch_27e
        0x1255818c -> :sswitch_270
        0x1263990d -> :sswitch_262
        0x12d90f3a -> :sswitch_254
        0x12d90f4c -> :sswitch_246
        0x12d98b1b -> :sswitch_238
        0x12d98b22 -> :sswitch_22a
        0x1844c711 -> :sswitch_21c
        0x1e3e8044 -> :sswitch_20e
        0x2f5336ed -> :sswitch_200
        0x2f54115e -> :sswitch_1f2
        0x2f541849 -> :sswitch_1e4
        0x31cf010e -> :sswitch_1d6
        0x36ad82f4 -> :sswitch_1c8
        0x391a0b61 -> :sswitch_1ba
        0x3f3728cd -> :sswitch_1ac
        0x448ec687 -> :sswitch_19e
        0x46260f63 -> :sswitch_190
        0x4c505106 -> :sswitch_182
        0x4de67084 -> :sswitch_174
        0x506ac5a9 -> :sswitch_166
        0x5abad9cd -> :sswitch_158
        0x64d2e6e9 -> :sswitch_14a
        0x64d2eac5 -> :sswitch_13c
        0x65e4085b -> :sswitch_12e
        0x6f373556 -> :sswitch_120
        0x719f1dcb -> :sswitch_112
        0x75d9a0f0 -> :sswitch_104
        0x7796d144 -> :sswitch_f7
        0x785bcb26 -> :sswitch_ea
        0x78fc0e50 -> :sswitch_dd
        0x790521fb -> :sswitch_d0
        0x7933207f -> :sswitch_c3
        0x7a05a409 -> :sswitch_b6
        0x7a0696bd -> :sswitch_a9
        0x7a16dfe7 -> :sswitch_9c
        0x7a1f0e95 -> :sswitch_8f
    .end sparse-switch

    :pswitch_data_ab2
    .packed-switch 0x0
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
    .end packed-switch

    :sswitch_data_bce
    .sparse-switch
        -0x236fe21d -> :sswitch_83f
        0x1e9d52 -> :sswitch_834
        0x1e9d5f -> :sswitch_82b
    .end sparse-switch

    :pswitch_data_bdc
    .packed-switch 0x0
        :pswitch_84d
        :pswitch_84d
        :pswitch_84d
    .end packed-switch
.end method


# virtual methods
.method protected C(JJ)Z
    .registers 6

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/m/h;->bA(J)Z

    move-result p1

    if-eqz p1, :cond_f

    const-wide/32 p1, 0x186a0

    cmp-long v0, p3, p1

    if-lez v0, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method protected a(FLcom/applovin/exoplayer2/v;[Lcom/applovin/exoplayer2/v;)F
    .registers 9

    array-length p2, p3

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    :goto_6
    if-ge v1, p2, :cond_17

    aget-object v3, p3, v1

    iget v3, v3, Lcom/applovin/exoplayer2/v;->dF:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_14

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_17
    cmpl-float p2, v2, v0

    if-nez p2, :cond_1c

    goto :goto_1e

    :cond_1c
    mul-float v0, v2, p1

    :goto_1e
    return v0
.end method

.method protected a(Lcom/applovin/exoplayer2/f/k;Lcom/applovin/exoplayer2/v;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/f/l$b;
        }
    .end annotation

    iget-object v0, p2, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/u;->aX(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-static {v1}, Lcom/applovin/exoplayer2/z1;->b(I)I

    move-result p1

    return p1

    :cond_e
    iget-object v0, p2, Lcom/applovin/exoplayer2/v;->dC:Lcom/applovin/exoplayer2/d/e;

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {p1, p2, v0, v1}, Lcom/applovin/exoplayer2/m/h;->a(Lcom/applovin/exoplayer2/f/k;Lcom/applovin/exoplayer2/v;ZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_26

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-static {p1, p2, v1, v1}, Lcom/applovin/exoplayer2/m/h;->a(Lcom/applovin/exoplayer2/f/k;Lcom/applovin/exoplayer2/v;ZZ)Ljava/util/List;

    move-result-object v3

    :cond_26
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-static {v2}, Lcom/applovin/exoplayer2/z1;->b(I)I

    move-result p1

    return p1

    :cond_31
    invoke-static {p2}, Lcom/applovin/exoplayer2/f/j;->q(Lcom/applovin/exoplayer2/v;)Z

    move-result v4

    if-nez v4, :cond_3d

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/applovin/exoplayer2/z1;->b(I)I

    move-result p1

    return p1

    :cond_3d
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/f/i;

    invoke-virtual {v3, p2}, Lcom/applovin/exoplayer2/f/i;->l(Lcom/applovin/exoplayer2/v;)Z

    move-result v4

    invoke-virtual {v3, p2}, Lcom/applovin/exoplayer2/f/i;->n(Lcom/applovin/exoplayer2/v;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/16 v3, 0x10

    goto :goto_52

    :cond_50
    const/16 v3, 0x8

    :goto_52
    if-eqz v4, :cond_72

    invoke-static {p1, p2, v0, v2}, Lcom/applovin/exoplayer2/m/h;->a(Lcom/applovin/exoplayer2/f/k;Lcom/applovin/exoplayer2/v;ZZ)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_72

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/f/i;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/f/i;->l(Lcom/applovin/exoplayer2/v;)Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/f/i;->n(Lcom/applovin/exoplayer2/v;)Z

    move-result p1

    if-eqz p1, :cond_72

    const/16 v1, 0x20

    :cond_72
    if-eqz v4, :cond_76

    const/4 p1, 0x4

    goto :goto_77

    :cond_76
    const/4 p1, 0x3

    :goto_77
    invoke-static {p1, v3, v1}, Lcom/applovin/exoplayer2/z1;->a(III)I

    move-result p1

    return p1
.end method

.method protected a(Lcom/applovin/exoplayer2/v;Ljava/lang/String;Lcom/applovin/exoplayer2/m/h$a;FZI)Landroid/media/MediaFormat;
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p1, Lcom/applovin/exoplayer2/v;->dE:I

    const-string v1, "width"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget p2, p1, Lcom/applovin/exoplayer2/v;->height:I

    const-string v1, "height"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p2, p1, Lcom/applovin/exoplayer2/v;->dB:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/applovin/exoplayer2/l/t;->a(Landroid/media/MediaFormat;Ljava/util/List;)V

    iget p2, p1, Lcom/applovin/exoplayer2/v;->dF:F

    const-string v1, "frame-rate"

    invoke-static {v0, v1, p2}, Lcom/applovin/exoplayer2/l/t;->a(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    iget p2, p1, Lcom/applovin/exoplayer2/v;->dG:I

    const-string v1, "rotation-degrees"

    invoke-static {v0, v1, p2}, Lcom/applovin/exoplayer2/l/t;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object p2, p1, Lcom/applovin/exoplayer2/v;->dK:Lcom/applovin/exoplayer2/m/b;

    invoke-static {v0, p2}, Lcom/applovin/exoplayer2/l/t;->a(Landroid/media/MediaFormat;Lcom/applovin/exoplayer2/m/b;)V

    iget-object p2, p1, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    const-string v1, "video/dolby-vision"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4d

    invoke-static {p1}, Lcom/applovin/exoplayer2/f/l;->r(Lcom/applovin/exoplayer2/v;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_4d

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "profile"

    invoke-static {v0, p2, p1}, Lcom/applovin/exoplayer2/l/t;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    :cond_4d
    iget p1, p3, Lcom/applovin/exoplayer2/m/h$a;->dE:I

    const-string p2, "max-width"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget p1, p3, Lcom/applovin/exoplayer2/m/h$a;->height:I

    const-string p2, "max-height"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget p1, p3, Lcom/applovin/exoplayer2/m/h$a;->aes:I

    const-string p2, "max-input-size"

    invoke-static {v0, p2, p1}, Lcom/applovin/exoplayer2/l/t;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    sget p1, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 p2, 0x17

    const/4 p3, 0x0

    if-lt p1, p2, :cond_79

    const-string p1, "priority"

    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p4, p1

    if-eqz p1, :cond_79

    const-string p1, "operating-rate"

    invoke-virtual {v0, p1, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_79
    if-eqz p5, :cond_86

    const/4 p1, 0x1

    const-string p2, "no-post-process"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "auto-frc"

    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_86
    if-eqz p6, :cond_8b

    invoke-static {v0, p6}, Lcom/applovin/exoplayer2/m/h;->a(Landroid/media/MediaFormat;I)V

    :cond_8b
    return-object v0
.end method

.method protected a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/c/h;
    .registers 12

    invoke-virtual {p1, p2, p3}, Lcom/applovin/exoplayer2/f/i;->a(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/c/h;

    move-result-object v0

    iget v1, v0, Lcom/applovin/exoplayer2/c/h;->rR:I

    iget v2, p3, Lcom/applovin/exoplayer2/v;->dE:I

    iget-object v3, p0, Lcom/applovin/exoplayer2/m/h;->adT:Lcom/applovin/exoplayer2/m/h$a;

    iget v4, v3, Lcom/applovin/exoplayer2/m/h$a;->dE:I

    if-gt v2, v4, :cond_14

    iget v2, p3, Lcom/applovin/exoplayer2/v;->height:I

    iget v3, v3, Lcom/applovin/exoplayer2/m/h$a;->height:I

    if-le v2, v3, :cond_16

    :cond_14
    or-int/lit16 v1, v1, 0x100

    :cond_16
    invoke-static {p1, p3}, Lcom/applovin/exoplayer2/m/h;->c(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;)I

    move-result v2

    iget-object v3, p0, Lcom/applovin/exoplayer2/m/h;->adT:Lcom/applovin/exoplayer2/m/h$a;

    iget v3, v3, Lcom/applovin/exoplayer2/m/h$a;->aes:I

    if-le v2, v3, :cond_22

    or-int/lit8 v1, v1, 0x40

    :cond_22
    move v7, v1

    new-instance v1, Lcom/applovin/exoplayer2/c/h;

    iget-object v3, p1, Lcom/applovin/exoplayer2/f/i;->name:Ljava/lang/String;

    if-eqz v7, :cond_2c

    const/4 p1, 0x0

    const/4 v6, 0x0

    goto :goto_2f

    :cond_2c
    iget p1, v0, Lcom/applovin/exoplayer2/c/h;->pZ:I

    move v6, p1

    :goto_2f
    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/applovin/exoplayer2/c/h;-><init>(Ljava/lang/String;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/v;II)V

    return-object v1
.end method

.method protected a(Lcom/applovin/exoplayer2/w;)Lcom/applovin/exoplayer2/c/h;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/w;)Lcom/applovin/exoplayer2/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/m/h;->adP:Lcom/applovin/exoplayer2/m/n$a;

    iget-object p1, p1, Lcom/applovin/exoplayer2/w;->dU:Lcom/applovin/exoplayer2/v;

    invoke-virtual {v1, p1, v0}, Lcom/applovin/exoplayer2/m/n$a;->c(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/c/h;)V

    return-object v0
.end method

.method protected a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;Landroid/media/MediaCrypto;F)Lcom/applovin/exoplayer2/f/g$a;
    .registers 13
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->adW:Lcom/applovin/exoplayer2/m/d;

    if-eqz v0, :cond_10

    iget-boolean v1, v0, Lcom/applovin/exoplayer2/m/d;->Hu:Z

    iget-boolean v2, p1, Lcom/applovin/exoplayer2/f/i;->Hu:Z

    if-eq v1, v2, :cond_10

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/d;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/h;->adW:Lcom/applovin/exoplayer2/m/d;

    :cond_10
    iget-object v3, p1, Lcom/applovin/exoplayer2/f/i;->Hr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->af()[Lcom/applovin/exoplayer2/v;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/applovin/exoplayer2/m/h;->b(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;[Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/m/h$a;

    move-result-object v4

    iput-object v4, p0, Lcom/applovin/exoplayer2/m/h;->adT:Lcom/applovin/exoplayer2/m/h$a;

    iget-boolean v6, p0, Lcom/applovin/exoplayer2/m/h;->adS:Z

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/m/h;->hi:Z

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/applovin/exoplayer2/m/h;->aep:I

    move v7, v0

    goto :goto_28

    :cond_26
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_28
    move-object v1, p0

    move-object v2, p2

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/applovin/exoplayer2/m/h;->a(Lcom/applovin/exoplayer2/v;Ljava/lang/String;Lcom/applovin/exoplayer2/m/h$a;FZI)Landroid/media/MediaFormat;

    move-result-object p4

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->Hm:Landroid/view/Surface;

    if-nez v0, :cond_52

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/m/h;->e(Lcom/applovin/exoplayer2/f/i;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->adW:Lcom/applovin/exoplayer2/m/d;

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->E:Landroid/content/Context;

    iget-boolean v1, p1, Lcom/applovin/exoplayer2/f/i;->Hu:Z

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/m/d;->c(Landroid/content/Context;Z)Lcom/applovin/exoplayer2/m/d;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/h;->adW:Lcom/applovin/exoplayer2/m/d;

    :cond_47
    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->adW:Lcom/applovin/exoplayer2/m/d;

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/h;->Hm:Landroid/view/Surface;

    goto :goto_52

    :cond_4c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->Hm:Landroid/view/Surface;

    invoke-static {p1, p4, p2, v0, p3}, Lcom/applovin/exoplayer2/f/g$a;->a(Lcom/applovin/exoplayer2/f/i;Landroid/media/MediaFormat;Lcom/applovin/exoplayer2/v;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lcom/applovin/exoplayer2/f/g$a;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/f/i;)Lcom/applovin/exoplayer2/f/h;
    .registers 5
    .param p2    # Lcom/applovin/exoplayer2/f/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/applovin/exoplayer2/m/g;

    iget-object v1, p0, Lcom/applovin/exoplayer2/m/h;->Hm:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, v1}, Lcom/applovin/exoplayer2/m/g;-><init>(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/f/i;Landroid/view/Surface;)V

    return-object v0
.end method

.method protected a(Lcom/applovin/exoplayer2/f/k;Lcom/applovin/exoplayer2/v;Z)Ljava/util/List;
    .registers 5
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

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/m/h;->hi:Z

    invoke-static {p1, p2, p3, v0}, Lcom/applovin/exoplayer2/m/h;->a(Lcom/applovin/exoplayer2/f/k;Lcom/applovin/exoplayer2/v;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(FF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/applovin/exoplayer2/f/j;->a(FF)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/m/h;->adO:Lcom/applovin/exoplayer2/m/m;

    invoke-virtual {p2, p1}, Lcom/applovin/exoplayer2/m/m;->v(F)V

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4d

    const/4 v0, 0x7

    if-eq p1, v0, :cond_48

    const/16 v0, 0xa

    if-eq p1, v0, :cond_34

    const/4 v0, 0x4

    if-eq p1, v0, :cond_20

    const/4 v0, 0x5

    if-eq p1, v0, :cond_14

    invoke-super {p0, p1, p2}, Lcom/applovin/exoplayer2/e;->a(ILjava/lang/Object;)V

    goto :goto_50

    :cond_14
    iget-object p1, p0, Lcom/applovin/exoplayer2/m/h;->adO:Lcom/applovin/exoplayer2/m/m;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/m/m;->fS(I)V

    goto :goto_50

    :cond_20
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/m/h;->adY:I

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->jZ()Lcom/applovin/exoplayer2/f/g;

    move-result-object p1

    if-eqz p1, :cond_50

    iget p2, p0, Lcom/applovin/exoplayer2/m/h;->adY:I

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/f/g;->cJ(I)V

    goto :goto_50

    :cond_34
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Lcom/applovin/exoplayer2/m/h;->aep:I

    if-eq p2, p1, :cond_50

    iput p1, p0, Lcom/applovin/exoplayer2/m/h;->aep:I

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/m/h;->hi:Z

    if-eqz p1, :cond_50

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->kd()V

    goto :goto_50

    :cond_48
    check-cast p2, Lcom/applovin/exoplayer2/m/l;

    iput-object p2, p0, Lcom/applovin/exoplayer2/m/h;->aer:Lcom/applovin/exoplayer2/m/l;

    goto :goto_50

    :cond_4d
    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/m/h;->S(Ljava/lang/Object;)V

    :cond_50
    :goto_50
    return-void
.end method

.method protected a(JZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/f/j;->a(JZ)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/h;->ql()V

    iget-object p1, p0, Lcom/applovin/exoplayer2/m/h;->adO:Lcom/applovin/exoplayer2/m/m;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/m/m;->qx()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/applovin/exoplayer2/m/h;->aei:J

    iput-wide p1, p0, Lcom/applovin/exoplayer2/m/h;->aec:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/m/h;->aeg:I

    if-eqz p3, :cond_1d

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/h;->qk()V

    goto :goto_1f

    :cond_1d
    iput-wide p1, p0, Lcom/applovin/exoplayer2/m/h;->aed:J

    :goto_1f
    return-void
.end method

.method protected a(Lcom/applovin/exoplayer2/c/g;)V
    .registers 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/m/h;->hi:Z

    if-nez v0, :cond_a

    iget v1, p0, Lcom/applovin/exoplayer2/m/h;->aeh:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/applovin/exoplayer2/m/h;->aeh:I

    :cond_a
    sget v1, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_17

    if-eqz v0, :cond_17

    iget-wide v0, p1, Lcom/applovin/exoplayer2/c/g;->rJ:J

    invoke-virtual {p0, v0, v1}, Lcom/applovin/exoplayer2/m/h;->by(J)V

    :cond_17
    return-void
.end method

.method protected a(Lcom/applovin/exoplayer2/f/g;IJ)V
    .registers 5

    const-string p3, "skipVideoBuffer"

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/ah;->bg(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/applovin/exoplayer2/f/g;->l(IZ)V

    invoke-static {}, Lcom/applovin/exoplayer2/l/ah;->pV()V

    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->IL:Lcom/applovin/exoplayer2/c/e;

    iget p2, p1, Lcom/applovin/exoplayer2/c/e;->rA:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/applovin/exoplayer2/c/e;->rA:I

    return-void
.end method

.method protected a(Lcom/applovin/exoplayer2/f/g;IJJ)V
    .registers 7
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/h;->qp()V

    const-string p3, "releaseOutputBuffer"

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/ah;->bg(Ljava/lang/String;)V

    invoke-interface {p1, p2, p5, p6}, Lcom/applovin/exoplayer2/f/g;->i(IJ)V

    invoke-static {}, Lcom/applovin/exoplayer2/l/ah;->pV()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    iput-wide p1, p0, Lcom/applovin/exoplayer2/m/h;->aej:J

    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->IL:Lcom/applovin/exoplayer2/c/e;

    iget p2, p1, Lcom/applovin/exoplayer2/c/e;->rz:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/applovin/exoplayer2/c/e;->rz:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/m/h;->aeg:I

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/m/h;->qm()V

    return-void
.end method

.method protected a(Lcom/applovin/exoplayer2/f/g;Landroid/view/Surface;)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/f/g;->b(Landroid/view/Surface;)V

    return-void
.end method

.method protected a(Lcom/applovin/exoplayer2/v;Landroid/media/MediaFormat;)V
    .registers 9
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->jZ()Lcom/applovin/exoplayer2/f/g;

    move-result-object v0

    if-eqz v0, :cond_b

    iget v1, p0, Lcom/applovin/exoplayer2/m/h;->adY:I

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/f/g;->cJ(I)V

    :cond_b
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/m/h;->hi:Z

    if-eqz v0, :cond_18

    iget p2, p1, Lcom/applovin/exoplayer2/v;->dE:I

    iput p2, p0, Lcom/applovin/exoplayer2/m/h;->aek:I

    iget p2, p1, Lcom/applovin/exoplayer2/v;->height:I

    iput p2, p0, Lcom/applovin/exoplayer2/m/h;->ael:I

    goto :goto_69

    :cond_18
    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    if-eqz v1, :cond_3e

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v1, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    if-eqz v1, :cond_4c

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    goto :goto_52

    :cond_4c
    const-string v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_52
    iput v0, p0, Lcom/applovin/exoplayer2/m/h;->aek:I

    if-eqz v1, :cond_61

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    add-int/2addr v0, v5

    goto :goto_67

    :cond_61
    const-string v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_67
    iput v0, p0, Lcom/applovin/exoplayer2/m/h;->ael:I

    :goto_69
    iget p2, p1, Lcom/applovin/exoplayer2/v;->dH:F

    iput p2, p0, Lcom/applovin/exoplayer2/m/h;->aen:F

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8b

    iget v0, p1, Lcom/applovin/exoplayer2/v;->dG:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_7d

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_8f

    :cond_7d
    iget v0, p0, Lcom/applovin/exoplayer2/m/h;->aek:I

    iget v1, p0, Lcom/applovin/exoplayer2/m/h;->ael:I

    iput v1, p0, Lcom/applovin/exoplayer2/m/h;->aek:I

    iput v0, p0, Lcom/applovin/exoplayer2/m/h;->ael:I

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p2

    iput v0, p0, Lcom/applovin/exoplayer2/m/h;->aen:F

    goto :goto_8f

    :cond_8b
    iget p2, p1, Lcom/applovin/exoplayer2/v;->dG:I

    iput p2, p0, Lcom/applovin/exoplayer2/m/h;->aem:I

    :cond_8f
    :goto_8f
    iget-object p2, p0, Lcom/applovin/exoplayer2/m/h;->adO:Lcom/applovin/exoplayer2/m/m;

    iget p1, p1, Lcom/applovin/exoplayer2/v;->dF:F

    invoke-virtual {p2, p1}, Lcom/applovin/exoplayer2/m/m;->y(F)V

    return-void
.end method

.method protected a(ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/applovin/exoplayer2/f/j;->a(ZZ)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->ag()Lcom/applovin/exoplayer2/at;

    move-result-object p1

    iget-boolean p1, p1, Lcom/applovin/exoplayer2/at;->hi:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    iget v1, p0, Lcom/applovin/exoplayer2/m/h;->aep:I

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/m/h;->hi:Z

    if-eq v1, p1, :cond_20

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/m/h;->hi:Z

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->kd()V

    :cond_20
    iget-object p1, p0, Lcom/applovin/exoplayer2/m/h;->adP:Lcom/applovin/exoplayer2/m/n$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->IL:Lcom/applovin/exoplayer2/c/e;

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/m/n$a;->e(Lcom/applovin/exoplayer2/c/e;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/m/h;->adO:Lcom/applovin/exoplayer2/m/m;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/m/m;->qw()V

    iput-boolean p2, p0, Lcom/applovin/exoplayer2/m/h;->aea:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/m/h;->aeb:Z

    return-void
.end method

.method protected a(JJLcom/applovin/exoplayer2/f/g;Ljava/nio/ByteBuffer;IIIJZZLcom/applovin/exoplayer2/v;)Z
    .registers 36
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

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move-object/from16 v9, p5

    move/from16 v10, p7

    move-wide/from16 v0, p10

    invoke-static/range {p5 .. p5}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v6, Lcom/applovin/exoplayer2/m/h;->aec:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v2, v4

    if-nez v11, :cond_1a

    iput-wide v7, v6, Lcom/applovin/exoplayer2/m/h;->aec:J

    :cond_1a
    iget-wide v2, v6, Lcom/applovin/exoplayer2/m/h;->aei:J

    cmp-long v11, v0, v2

    if-eqz v11, :cond_27

    iget-object v2, v6, Lcom/applovin/exoplayer2/m/h;->adO:Lcom/applovin/exoplayer2/m/m;

    invoke-virtual {v2, v0, v1}, Lcom/applovin/exoplayer2/m/m;->bw(J)V

    iput-wide v0, v6, Lcom/applovin/exoplayer2/m/h;->aei:J

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->ku()J

    move-result-wide v2

    sub-long v11, v0, v2

    const/4 v13, 0x1

    if-eqz p12, :cond_36

    if-nez p13, :cond_36

    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/applovin/exoplayer2/m/h;->a(Lcom/applovin/exoplayer2/f/g;IJ)V

    return v13

    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->kn()F

    move-result v14

    float-to-double v14, v14

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/e;->P()I

    move-result v4

    const/4 v5, 0x2

    const/16 v16, 0x0

    if-ne v4, v5, :cond_46

    const/4 v4, 0x1

    goto :goto_47

    :cond_46
    const/4 v4, 0x0

    :goto_47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    sub-long/2addr v0, v7

    long-to-double v0, v0

    div-double/2addr v0, v14

    double-to-long v0, v0

    if-eqz v4, :cond_58

    sub-long v14, v17, p3

    sub-long/2addr v0, v14

    :cond_58
    iget-object v5, v6, Lcom/applovin/exoplayer2/m/h;->Hm:Landroid/view/Surface;

    iget-object v14, v6, Lcom/applovin/exoplayer2/m/h;->adW:Lcom/applovin/exoplayer2/m/d;

    if-ne v5, v14, :cond_6c

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/m/h;->bA(J)Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/applovin/exoplayer2/m/h;->a(Lcom/applovin/exoplayer2/f/g;IJ)V

    invoke-virtual {v6, v0, v1}, Lcom/applovin/exoplayer2/m/h;->bz(J)V

    return v13

    :cond_6b
    return v16

    :cond_6c
    iget-wide v14, v6, Lcom/applovin/exoplayer2/m/h;->aej:J

    sub-long v14, v17, v14

    iget-boolean v5, v6, Lcom/applovin/exoplayer2/m/h;->aeb:Z

    if-nez v5, :cond_7b

    if-nez v4, :cond_7f

    iget-boolean v5, v6, Lcom/applovin/exoplayer2/m/h;->aea:Z

    if-eqz v5, :cond_83

    goto :goto_7f

    :cond_7b
    iget-boolean v5, v6, Lcom/applovin/exoplayer2/m/h;->adZ:Z

    if-nez v5, :cond_83

    :cond_7f
    :goto_7f
    move-wide/from16 p10, v14

    const/4 v5, 0x1

    goto :goto_86

    :cond_83
    move-wide/from16 p10, v14

    const/4 v5, 0x0

    :goto_86
    iget-wide v13, v6, Lcom/applovin/exoplayer2/m/h;->aed:J

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v15, v13, v17

    if-nez v15, :cond_a3

    cmp-long v13, v7, v2

    if-ltz v13, :cond_a3

    if-nez v5, :cond_a1

    if-eqz v4, :cond_a3

    move-wide/from16 v2, p10

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/applovin/exoplayer2/m/h;->C(JJ)Z

    move-result v2

    if-eqz v2, :cond_a3

    :cond_a1
    const/4 v2, 0x1

    goto :goto_a4

    :cond_a3
    const/4 v2, 0x0

    :goto_a4
    const/16 v13, 0x15

    if-eqz v2, :cond_d1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object/from16 p8, p0

    move-wide/from16 p9, v11

    move-wide/from16 p11, v2

    move-object/from16 p13, p14

    invoke-direct/range {p8 .. p13}, Lcom/applovin/exoplayer2/m/h;->a(JJLcom/applovin/exoplayer2/v;)V

    sget v4, Lcom/applovin/exoplayer2/l/ai;->acV:I

    if-lt v4, v13, :cond_c9

    move-object/from16 p8, p0

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v11

    move-wide/from16 p13, v2

    invoke-virtual/range {p8 .. p14}, Lcom/applovin/exoplayer2/m/h;->a(Lcom/applovin/exoplayer2/f/g;IJJ)V

    goto :goto_cc

    :cond_c9
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/applovin/exoplayer2/m/h;->c(Lcom/applovin/exoplayer2/f/g;IJ)V

    :goto_cc
    invoke-virtual {v6, v0, v1}, Lcom/applovin/exoplayer2/m/h;->bz(J)V

    :goto_cf
    const/4 v0, 0x1

    return v0

    :cond_d1
    if-eqz v4, :cond_189

    iget-wide v2, v6, Lcom/applovin/exoplayer2/m/h;->aec:J

    cmp-long v4, v7, v2

    if-nez v4, :cond_db

    goto/16 :goto_189

    :cond_db
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    mul-long v0, v0, v19

    add-long/2addr v0, v2

    iget-object v4, v6, Lcom/applovin/exoplayer2/m/h;->adO:Lcom/applovin/exoplayer2/m/m;

    invoke-virtual {v4, v0, v1}, Lcom/applovin/exoplayer2/m/m;->bD(J)J

    move-result-wide v14

    sub-long v0, v14, v2

    div-long v3, v0, v19

    iget-wide v0, v6, Lcom/applovin/exoplayer2/m/h;->aed:J

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v17

    if-eqz v2, :cond_f9

    const/4 v5, 0x1

    goto :goto_fa

    :cond_f9
    const/4 v5, 0x0

    :goto_fa
    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide/from16 v17, v3

    move-wide/from16 v3, p3

    move v13, v5

    move/from16 v5, p13

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/exoplayer2/m/h;->b(JJZ)Z

    move-result v0

    if-eqz v0, :cond_111

    invoke-virtual {v6, v7, v8, v13}, Lcom/applovin/exoplayer2/m/h;->h(JZ)Z

    move-result v0

    if-eqz v0, :cond_111

    return v16

    :cond_111
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-wide/from16 v3, p3

    move/from16 v5, p13

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/exoplayer2/m/h;->a(JJZ)Z

    move-result v0

    if-eqz v0, :cond_12e

    if-eqz v13, :cond_125

    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/applovin/exoplayer2/m/h;->a(Lcom/applovin/exoplayer2/f/g;IJ)V

    goto :goto_128

    :cond_125
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/applovin/exoplayer2/m/h;->b(Lcom/applovin/exoplayer2/f/g;IJ)V

    :goto_128
    move-wide/from16 v0, v17

    invoke-virtual {v6, v0, v1}, Lcom/applovin/exoplayer2/m/h;->bz(J)V

    goto :goto_cf

    :cond_12e
    move-wide/from16 v0, v17

    sget v2, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_158

    const-wide/32 v2, 0xc350

    cmp-long v4, v0, v2

    if-gez v4, :cond_189

    move-object/from16 p8, p0

    move-wide/from16 p9, v11

    move-wide/from16 p11, v14

    move-object/from16 p13, p14

    invoke-direct/range {p8 .. p13}, Lcom/applovin/exoplayer2/m/h;->a(JJLcom/applovin/exoplayer2/v;)V

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v11

    move-wide/from16 p13, v14

    invoke-virtual/range {p8 .. p14}, Lcom/applovin/exoplayer2/m/h;->a(Lcom/applovin/exoplayer2/f/g;IJJ)V

    invoke-virtual {v6, v0, v1}, Lcom/applovin/exoplayer2/m/h;->bz(J)V

    goto/16 :goto_cf

    :cond_158
    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-gez v4, :cond_189

    const-wide/16 v2, 0x2af8

    cmp-long v4, v0, v2

    if-lez v4, :cond_176

    const-wide/16 v2, 0x2710

    sub-long v3, v0, v2

    :try_start_168
    div-long v3, v3, v19

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16d
    .catch Ljava/lang/InterruptedException; {:try_start_168 .. :try_end_16d} :catch_16e

    goto :goto_176

    :catch_16e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return v16

    :cond_176
    :goto_176
    move-object/from16 p8, p0

    move-wide/from16 p9, v11

    move-wide/from16 p11, v14

    move-object/from16 p13, p14

    invoke-direct/range {p8 .. p13}, Lcom/applovin/exoplayer2/m/h;->a(JJLcom/applovin/exoplayer2/v;)V

    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/applovin/exoplayer2/m/h;->c(Lcom/applovin/exoplayer2/f/g;IJ)V

    invoke-virtual {v6, v0, v1}, Lcom/applovin/exoplayer2/m/h;->bz(J)V

    goto/16 :goto_cf

    :cond_189
    :goto_189
    return v16
.end method

.method protected a(JJZ)Z
    .registers 6

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/m/h;->bA(J)Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez p5, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method protected a(Lcom/applovin/exoplayer2/f/i;)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->Hm:Landroid/view/Surface;

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/m/h;->e(Lcom/applovin/exoplayer2/f/i;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method

.method protected aN(J)V
    .registers 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/applovin/exoplayer2/f/j;->aN(J)V

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/m/h;->hi:Z

    if-nez p1, :cond_d

    iget p1, p0, Lcom/applovin/exoplayer2/m/h;->aeh:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/applovin/exoplayer2/m/h;->aeh:I

    :cond_d
    return-void
.end method

.method protected aa()V
    .registers 6

    invoke-super {p0}, Lcom/applovin/exoplayer2/f/j;->aa()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/m/h;->aef:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/applovin/exoplayer2/m/h;->aee:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iput-wide v1, p0, Lcom/applovin/exoplayer2/m/h;->aej:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/applovin/exoplayer2/m/h;->rE:J

    iput v0, p0, Lcom/applovin/exoplayer2/m/h;->rF:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->adO:Lcom/applovin/exoplayer2/m/m;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/m;->aa()V

    return-void
.end method

.method protected ab()V
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/h;->aed:J

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/h;->qr()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/h;->qs()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->adO:Lcom/applovin/exoplayer2/m/m;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/m;->ab()V

    invoke-super {p0}, Lcom/applovin/exoplayer2/f/j;->ab()V

    return-void
.end method

.method protected ac()V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/h;->qo()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/h;->ql()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/m/h;->adX:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->adO:Lcom/applovin/exoplayer2/m/m;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/m;->ac()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/h;->aeq:Lcom/applovin/exoplayer2/m/h$b;

    :try_start_11
    invoke-super {p0}, Lcom/applovin/exoplayer2/f/j;->ac()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1c

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->adP:Lcom/applovin/exoplayer2/m/n$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->IL:Lcom/applovin/exoplayer2/c/e;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/m/n$a;->f(Lcom/applovin/exoplayer2/c/e;)V

    return-void

    :catchall_1c
    move-exception v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/m/h;->adP:Lcom/applovin/exoplayer2/m/n$a;

    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->IL:Lcom/applovin/exoplayer2/c/e;

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/m/n$a;->f(Lcom/applovin/exoplayer2/c/e;)V

    throw v0
.end method

.method protected ad()V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Lcom/applovin/exoplayer2/f/j;->ad()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_14

    iget-object v1, p0, Lcom/applovin/exoplayer2/m/h;->adW:Lcom/applovin/exoplayer2/m/d;

    if-eqz v1, :cond_13

    iget-object v2, p0, Lcom/applovin/exoplayer2/m/h;->Hm:Landroid/view/Surface;

    if-ne v2, v1, :cond_e

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/h;->Hm:Landroid/view/Surface;

    :cond_e
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/m/d;->release()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/h;->adW:Lcom/applovin/exoplayer2/m/d;

    :cond_13
    return-void

    :catchall_14
    move-exception v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/m/h;->adW:Lcom/applovin/exoplayer2/m/d;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/applovin/exoplayer2/m/h;->Hm:Landroid/view/Surface;

    iget-object v3, p0, Lcom/applovin/exoplayer2/m/h;->adW:Lcom/applovin/exoplayer2/m/d;

    if-ne v2, v3, :cond_21

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/h;->Hm:Landroid/view/Surface;

    :cond_21
    invoke-virtual {v3}, Lcom/applovin/exoplayer2/m/d;->release()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/h;->adW:Lcom/applovin/exoplayer2/m/d;

    :cond_26
    throw v1
.end method

.method protected b(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;[Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/m/h$a;
    .registers 16

    iget v0, p2, Lcom/applovin/exoplayer2/v;->dE:I

    iget v1, p2, Lcom/applovin/exoplayer2/v;->height:I

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/m/h;->c(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;)I

    move-result v2

    array-length v3, p3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v3, v4, :cond_25

    if-eq v2, v5, :cond_1f

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/m/h;->a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;)I

    move-result p1

    if-eq p1, v5, :cond_1f

    int-to-float p2, v2

    const/high16 p3, 0x3fc00000    # 1.5f

    mul-float p2, p2, p3

    float-to-int p2, p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_1f
    new-instance p1, Lcom/applovin/exoplayer2/m/h$a;

    invoke-direct {p1, v0, v1, v2}, Lcom/applovin/exoplayer2/m/h$a;-><init>(III)V

    return-object p1

    :cond_25
    array-length v3, p3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_29
    if-ge v7, v3, :cond_6d

    aget-object v9, p3, v7

    iget-object v10, p2, Lcom/applovin/exoplayer2/v;->dK:Lcom/applovin/exoplayer2/m/b;

    if-eqz v10, :cond_43

    iget-object v10, v9, Lcom/applovin/exoplayer2/v;->dK:Lcom/applovin/exoplayer2/m/b;

    if-nez v10, :cond_43

    invoke-virtual {v9}, Lcom/applovin/exoplayer2/v;->bR()Lcom/applovin/exoplayer2/v$a;

    move-result-object v9

    iget-object v10, p2, Lcom/applovin/exoplayer2/v;->dK:Lcom/applovin/exoplayer2/m/b;

    invoke-virtual {v9, v10}, Lcom/applovin/exoplayer2/v$a;->a(Lcom/applovin/exoplayer2/m/b;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object v9

    :cond_43
    invoke-virtual {p1, p2, v9}, Lcom/applovin/exoplayer2/f/i;->a(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/c/h;

    move-result-object v10

    iget v10, v10, Lcom/applovin/exoplayer2/c/h;->pZ:I

    if-eqz v10, :cond_6a

    iget v10, v9, Lcom/applovin/exoplayer2/v;->dE:I

    if-eq v10, v5, :cond_56

    iget v11, v9, Lcom/applovin/exoplayer2/v;->height:I

    if-ne v11, v5, :cond_54

    goto :goto_56

    :cond_54
    const/4 v11, 0x0

    goto :goto_57

    :cond_56
    :goto_56
    const/4 v11, 0x1

    :goto_57
    or-int/2addr v8, v11

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v10, v9, Lcom/applovin/exoplayer2/v;->height:I

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, v9}, Lcom/applovin/exoplayer2/m/h;->c(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_6a
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    :cond_6d
    if-eqz v8, :cond_d2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v4, "MediaCodecVideoRenderer"

    invoke-static {v4, p3}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/m/h;->b(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;)Landroid/graphics/Point;

    move-result-object p3

    if-eqz p3, :cond_d2

    iget v5, p3, Landroid/graphics/Point;->x:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/v;->bR()Lcom/applovin/exoplayer2/v$a;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/applovin/exoplayer2/v$a;->J(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/applovin/exoplayer2/v$a;->K(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/m/h;->a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Codec max resolution adjusted to: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d2
    new-instance p1, Lcom/applovin/exoplayer2/m/h$a;

    invoke-direct {p1, v0, v1, v2}, Lcom/applovin/exoplayer2/m/h$a;-><init>(III)V

    return-object p1
.end method

.method protected b(Lcom/applovin/exoplayer2/f/g;IJ)V
    .registers 5

    const-string p3, "dropVideoBuffer"

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/ah;->bg(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/applovin/exoplayer2/f/g;->l(IZ)V

    invoke-static {}, Lcom/applovin/exoplayer2/l/ah;->pV()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/m/h;->fR(I)V

    return-void
.end method

.method protected b(JJZ)Z
    .registers 6

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/m/h;->bB(J)Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez p5, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method protected bo(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "OMX.google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    const-class p1, Lcom/applovin/exoplayer2/m/h;

    monitor-enter p1

    :try_start_d
    sget-boolean v0, Lcom/applovin/exoplayer2/m/h;->adM:Z

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/applovin/exoplayer2/m/h;->qu()Z

    move-result v0

    sput-boolean v0, Lcom/applovin/exoplayer2/m/h;->adN:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/applovin/exoplayer2/m/h;->adM:Z

    :cond_1a
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1e

    sget-boolean p1, Lcom/applovin/exoplayer2/m/h;->adN:Z

    return p1

    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method protected by(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/f/j;->aL(J)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/h;->qp()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->IL:Lcom/applovin/exoplayer2/c/e;

    iget v1, v0, Lcom/applovin/exoplayer2/c/e;->rz:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/applovin/exoplayer2/c/e;->rz:I

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/m/h;->qm()V

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/m/h;->aN(J)V

    return-void
.end method

.method protected bz(J)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->IL:Lcom/applovin/exoplayer2/c/e;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/c/e;->af(J)V

    iget-wide v0, p0, Lcom/applovin/exoplayer2/m/h;->rE:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/h;->rE:J

    iget p1, p0, Lcom/applovin/exoplayer2/m/h;->rF:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/applovin/exoplayer2/m/h;->rF:I

    return-void
.end method

.method protected c(Lcom/applovin/exoplayer2/f/g;IJ)V
    .registers 7

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/h;->qp()V

    const-string p3, "releaseOutputBuffer"

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/ah;->bg(Ljava/lang/String;)V

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Lcom/applovin/exoplayer2/f/g;->l(IZ)V

    invoke-static {}, Lcom/applovin/exoplayer2/l/ah;->pV()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/applovin/exoplayer2/m/h;->aej:J

    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->IL:Lcom/applovin/exoplayer2/c/e;

    iget p2, p1, Lcom/applovin/exoplayer2/c/e;->rz:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/applovin/exoplayer2/c/e;->rz:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/m/h;->aeg:I

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/m/h;->qm()V

    return-void
.end method

.method protected e(Ljava/lang/String;JJ)V
    .registers 12

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->adP:Lcom/applovin/exoplayer2/m/n$a;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/exoplayer2/m/n$a;->c(Ljava/lang/String;JJ)V

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/m/h;->bo(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/m/h;->adU:Z

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->kb()Lcom/applovin/exoplayer2/f/i;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/f/i;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/f/i;->jW()Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/m/h;->adV:Z

    sget p1, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_39

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/m/h;->hi:Z

    if-eqz p1, :cond_39

    new-instance p1, Lcom/applovin/exoplayer2/m/h$b;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->jZ()Lcom/applovin/exoplayer2/f/g;

    move-result-object p2

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/exoplayer2/f/g;

    invoke-direct {p1, p0, p2}, Lcom/applovin/exoplayer2/m/h$b;-><init>(Lcom/applovin/exoplayer2/m/h;Lcom/applovin/exoplayer2/f/g;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/h;->aeq:Lcom/applovin/exoplayer2/m/h$b;

    :cond_39
    return-void
.end method

.method protected eB()V
    .registers 1

    invoke-super {p0}, Lcom/applovin/exoplayer2/f/j;->eB()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/h;->ql()V

    return-void
.end method

.method protected f(Lcom/applovin/exoplayer2/c/g;)V
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/m/h;->adV:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object p1, p1, Lcom/applovin/exoplayer2/c/g;->rK:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_4f

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_4f

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_4f

    const/4 v0, 0x1

    if-ne v2, v0, :cond_4f

    const/4 v0, 0x4

    if-ne v3, v0, :cond_4f

    if-nez v4, :cond_4f

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->jZ()Lcom/applovin/exoplayer2/f/g;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/m/h;->a(Lcom/applovin/exoplayer2/f/g;[B)V

    :cond_4f
    return-void
.end method

.method protected fR(I)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->IL:Lcom/applovin/exoplayer2/c/e;

    iget v1, v0, Lcom/applovin/exoplayer2/c/e;->rB:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/applovin/exoplayer2/c/e;->rB:I

    iget v1, p0, Lcom/applovin/exoplayer2/m/h;->aef:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/applovin/exoplayer2/m/h;->aef:I

    iget v1, p0, Lcom/applovin/exoplayer2/m/h;->aeg:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/applovin/exoplayer2/m/h;->aeg:I

    iget p1, v0, Lcom/applovin/exoplayer2/c/e;->rC:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/applovin/exoplayer2/c/e;->rC:I

    iget p1, p0, Lcom/applovin/exoplayer2/m/h;->adR:I

    if-lez p1, :cond_24

    iget v0, p0, Lcom/applovin/exoplayer2/m/h;->aef:I

    if-lt v0, p1, :cond_24

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/h;->qr()V

    :cond_24
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "MediaCodecVideoRenderer"

    return-object v0
.end method

.method protected h(JZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/e;->e(J)I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    iget-object p2, p0, Lcom/applovin/exoplayer2/f/j;->IL:Lcom/applovin/exoplayer2/c/e;

    iget v0, p2, Lcom/applovin/exoplayer2/c/e;->rD:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p2, Lcom/applovin/exoplayer2/c/e;->rD:I

    iget v0, p0, Lcom/applovin/exoplayer2/m/h;->aeh:I

    add-int/2addr v0, p1

    if-eqz p3, :cond_1b

    iget p1, p2, Lcom/applovin/exoplayer2/c/e;->rA:I

    add-int/2addr p1, v0

    iput p1, p2, Lcom/applovin/exoplayer2/c/e;->rA:I

    goto :goto_1e

    :cond_1b
    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/m/h;->fR(I)V

    :goto_1e
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->ke()Z

    return v1
.end method

.method protected i(Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "MediaCodecVideoRenderer"

    const-string v1, "Video codec error"

    invoke-static {v0, v1, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->adP:Lcom/applovin/exoplayer2/m/n$a;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/m/n$a;->k(Ljava/lang/Exception;)V

    return-void
.end method

.method public isReady()Z
    .registers 10

    invoke-super {p0}, Lcom/applovin/exoplayer2/f/j;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/m/h;->adZ:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->adW:Lcom/applovin/exoplayer2/m/d;

    if-eqz v0, :cond_18

    iget-object v4, p0, Lcom/applovin/exoplayer2/m/h;->Hm:Landroid/view/Surface;

    if-eq v4, v0, :cond_22

    :cond_18
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->jZ()Lcom/applovin/exoplayer2/f/g;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/m/h;->hi:Z

    if-eqz v0, :cond_25

    :cond_22
    iput-wide v2, p0, Lcom/applovin/exoplayer2/m/h;->aed:J

    return v1

    :cond_25
    iget-wide v4, p0, Lcom/applovin/exoplayer2/m/h;->aed:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_2d

    return v0

    :cond_2d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/applovin/exoplayer2/m/h;->aed:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_38

    return v1

    :cond_38
    iput-wide v2, p0, Lcom/applovin/exoplayer2/m/h;->aed:J

    return v0
.end method

.method protected jY()Z
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/m/h;->hi:Z

    if-eqz v0, :cond_c

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected kh()V
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-super {p0}, Lcom/applovin/exoplayer2/f/j;->kh()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/m/h;->aeh:I

    return-void
.end method

.method qm()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/m/h;->aeb:Z

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/m/h;->adZ:Z

    if-nez v1, :cond_12

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/m/h;->adZ:Z

    iget-object v1, p0, Lcom/applovin/exoplayer2/m/h;->adP:Lcom/applovin/exoplayer2/m/n$a;

    iget-object v2, p0, Lcom/applovin/exoplayer2/m/h;->Hm:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/m/n$a;->T(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/m/h;->adX:Z

    :cond_12
    return-void
.end method

.method protected v(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h;->adP:Lcom/applovin/exoplayer2/m/n$a;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/m/n$a;->t(Ljava/lang/String;)V

    return-void
.end method

###### Class com.applovin.exoplayer2.m.h.a (com.applovin.exoplayer2.m.h$a)
.class public final Lcom/applovin/exoplayer2/m/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/m/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "a"
.end annotation


# instance fields
.field public final aes:I

.field public final dE:I

.field public final height:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/m/h$a;->dE:I

    iput p2, p0, Lcom/applovin/exoplayer2/m/h$a;->height:I

    iput p3, p0, Lcom/applovin/exoplayer2/m/h$a;->aes:I

    return-void
.end method

###### Class com.applovin.exoplayer2.m.h.b (com.applovin.exoplayer2.m.h$b)
.class final Lcom/applovin/exoplayer2/m/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/applovin/exoplayer2/f/g$c;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/m/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic aet:Lcom/applovin/exoplayer2/m/h;

.field private final jS:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/m/h;Lcom/applovin/exoplayer2/f/g;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/h$b;->aet:Lcom/applovin/exoplayer2/m/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/ai;->a(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/h$b;->jS:Landroid/os/Handler;

    invoke-interface {p2, p0, p1}, Lcom/applovin/exoplayer2/f/g;->a(Lcom/applovin/exoplayer2/f/g$c;Landroid/os/Handler;)V

    return-void
.end method

.method private bC(J)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/h$b;->aet:Lcom/applovin/exoplayer2/m/h;

    iget-object v1, v0, Lcom/applovin/exoplayer2/m/h;->aeq:Lcom/applovin/exoplayer2/m/h$b;

    if-eq p0, v1, :cond_7

    return-void

    :cond_7
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v3, p1, v1

    if-nez v3, :cond_14

    invoke-static {v0}, Lcom/applovin/exoplayer2/m/h;->a(Lcom/applovin/exoplayer2/m/h;)V

    goto :goto_1e

    :cond_14
    :try_start_14
    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/m/h;->by(J)V
    :try_end_17
    .catch Lcom/applovin/exoplayer2/p; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_1e

    :catch_18
    move-exception p1

    iget-object p2, p0, Lcom/applovin/exoplayer2/m/h$b;->aet:Lcom/applovin/exoplayer2/m/h;

    invoke-static {p2, p1}, Lcom/applovin/exoplayer2/m/h;->a(Lcom/applovin/exoplayer2/m/h;Lcom/applovin/exoplayer2/p;)V

    :goto_1e
    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/f/g;JJ)V
    .registers 8

    sget p1, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 p4, 0x1e

    if-ge p1, p4, :cond_19

    iget-object p1, p0, Lcom/applovin/exoplayer2/m/h$b;->jS:Landroid/os/Handler;

    const/4 p4, 0x0

    const/16 p5, 0x20

    shr-long v0, p2, p5

    long-to-int p5, v0

    long-to-int p3, p2

    invoke-static {p1, p4, p5, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/exoplayer2/m/h$b;->jS:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_1c

    :cond_19
    invoke-direct {p0, p2, p3}, Lcom/applovin/exoplayer2/m/h$b;->bC(J)V

    :goto_1c
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/l/ai;->O(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/m/h$b;->bC(J)V

    const/4 p1, 0x1

    return p1
.end method
