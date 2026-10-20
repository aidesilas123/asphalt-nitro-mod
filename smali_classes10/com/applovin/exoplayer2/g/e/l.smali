###### Class com.applovin.exoplayer2.g.e.l (com.applovin.exoplayer2.g.e.l)
.class public final Lcom/applovin/exoplayer2/g/e/l;
.super Lcom/applovin/exoplayer2/g/e/h;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/applovin/exoplayer2/g/e/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final Jn:Ljava/lang/String;

.field public final oc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/g/e/l$1;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/g/e/l$1;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/g/e/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/g/e/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/g/e/l;->oc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/applovin/exoplayer2/g/e/l;->Jn:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/g/e/h;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/g/e/l;->oc:Ljava/lang/String;

    iput-object p3, p0, Lcom/applovin/exoplayer2/g/e/l;->Jn:Ljava/lang/String;

    return-void
.end method

.method private static Z(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    const/16 v3, 0xa

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-lt v1, v3, :cond_41

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    :cond_41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_66

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    :cond_66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v6, :cond_7b

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_7b} :catch_7c

    :cond_7b
    :goto_7b
    return-object v0

    :catch_7c
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public F(Lcom/applovin/exoplayer2/ac$a;)V
    .registers 10

    iget-object v0, p0, Lcom/applovin/exoplayer2/g/e/h;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v1, :sswitch_data_21a

    goto/16 :goto_12f

    :sswitch_14
    const-string v1, "TYER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_12f

    :cond_1e
    const/16 v7, 0x15

    goto/16 :goto_12f

    :sswitch_22
    const-string v1, "TRCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_12f

    :cond_2c
    const/16 v7, 0x14

    goto/16 :goto_12f

    :sswitch_30
    const-string v1, "TPE3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_12f

    :cond_3a
    const/16 v7, 0x13

    goto/16 :goto_12f

    :sswitch_3e
    const-string v1, "TPE2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_12f

    :cond_48
    const/16 v7, 0x12

    goto/16 :goto_12f

    :sswitch_4c
    const-string v1, "TPE1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_12f

    :cond_56
    const/16 v7, 0x11

    goto/16 :goto_12f

    :sswitch_5a
    const-string v1, "TIT2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_12f

    :cond_64
    const/16 v7, 0x10

    goto/16 :goto_12f

    :sswitch_68
    const-string v1, "TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto/16 :goto_12f

    :cond_72
    const/16 v7, 0xf

    goto/16 :goto_12f

    :sswitch_76
    const-string v1, "TDRL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto/16 :goto_12f

    :cond_80
    const/16 v7, 0xe

    goto/16 :goto_12f

    :sswitch_84
    const-string v1, "TDRC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    goto/16 :goto_12f

    :cond_8e
    const/16 v7, 0xd

    goto/16 :goto_12f

    :sswitch_92
    const-string v1, "TDAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    goto/16 :goto_12f

    :cond_9c
    const/16 v7, 0xc

    goto/16 :goto_12f

    :sswitch_a0
    const-string v1, "TCOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    goto/16 :goto_12f

    :cond_aa
    const/16 v7, 0xb

    goto/16 :goto_12f

    :sswitch_ae
    const-string v1, "TALB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    goto/16 :goto_12f

    :cond_b8
    const/16 v7, 0xa

    goto/16 :goto_12f

    :sswitch_bc
    const-string v1, "TYE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c6

    goto/16 :goto_12f

    :cond_c6
    const/16 v7, 0x9

    goto/16 :goto_12f

    :sswitch_ca
    const-string v1, "TXT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d4

    goto/16 :goto_12f

    :cond_d4
    const/16 v7, 0x8

    goto/16 :goto_12f

    :sswitch_d8
    const-string v1, "TT2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e1

    goto :goto_12f

    :cond_e1
    const/4 v7, 0x7

    goto :goto_12f

    :sswitch_e3
    const-string v1, "TRK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ec

    goto :goto_12f

    :cond_ec
    const/4 v7, 0x6

    goto :goto_12f

    :sswitch_ee
    const-string v1, "TP3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f7

    goto :goto_12f

    :cond_f7
    const/4 v7, 0x5

    goto :goto_12f

    :sswitch_f9
    const-string v1, "TP2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_102

    goto :goto_12f

    :cond_102
    const/4 v7, 0x4

    goto :goto_12f

    :sswitch_104
    const-string v1, "TP1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10d

    goto :goto_12f

    :cond_10d
    const/4 v7, 0x3

    goto :goto_12f

    :sswitch_10f
    const-string v1, "TDA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_118

    goto :goto_12f

    :cond_118
    const/4 v7, 0x2

    goto :goto_12f

    :sswitch_11a
    const-string v1, "TCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_123

    goto :goto_12f

    :cond_123
    const/4 v7, 0x1

    goto :goto_12f

    :sswitch_125
    const-string v1, "TAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12e

    goto :goto_12f

    :cond_12e
    const/4 v7, 0x0

    :goto_12f
    packed-switch v7, :pswitch_data_274

    goto/16 :goto_218

    :pswitch_134
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/e/l;->Jn:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/exoplayer2/g/e/l;->Z(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v6, :cond_158

    if-eq v1, v5, :cond_14f

    if-eq v1, v3, :cond_146

    goto/16 :goto_218

    :cond_146
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/ac$a;->i(Ljava/lang/Integer;)Lcom/applovin/exoplayer2/ac$a;

    :cond_14f
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/ac$a;->h(Ljava/lang/Integer;)Lcom/applovin/exoplayer2/ac$a;

    :cond_158
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ac$a;->g(Ljava/lang/Integer;)Lcom/applovin/exoplayer2/ac$a;

    goto/16 :goto_218

    :pswitch_163
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/e/l;->Jn:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/exoplayer2/g/e/l;->Z(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v6, :cond_187

    if-eq v1, v5, :cond_17e

    if-eq v1, v3, :cond_175

    goto/16 :goto_218

    :cond_175
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/ac$a;->f(Ljava/lang/Integer;)Lcom/applovin/exoplayer2/ac$a;

    :cond_17e
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/ac$a;->e(Ljava/lang/Integer;)Lcom/applovin/exoplayer2/ac$a;

    :cond_187
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ac$a;->d(Ljava/lang/Integer;)Lcom/applovin/exoplayer2/ac$a;

    goto/16 :goto_218

    :pswitch_192
    :try_start_192
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/e/l;->Jn:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ac$a;->d(Ljava/lang/Integer;)Lcom/applovin/exoplayer2/ac$a;
    :try_end_19f
    .catch Ljava/lang/NumberFormatException; {:try_start_192 .. :try_end_19f} :catch_218

    goto/16 :goto_218

    :pswitch_1a1
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/e/l;->Jn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ac$a;->h(Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/ac$a;

    goto/16 :goto_218

    :pswitch_1a8
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/e/l;->Jn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ac$a;->a(Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/ac$a;

    goto :goto_218

    :pswitch_1ae
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/e/l;->Jn:Ljava/lang/String;

    const-string v1, "/"

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/ai;->l(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :try_start_1b6
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    array-length v2, v0

    if-le v2, v6, :cond_1ca

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1cb

    :cond_1ca
    const/4 v0, 0x0

    :goto_1cb
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/ac$a;->a(Ljava/lang/Integer;)Lcom/applovin/exoplayer2/ac$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ac$a;->b(Ljava/lang/Integer;)Lcom/applovin/exoplayer2/ac$a;
    :try_end_1d6
    .catch Ljava/lang/NumberFormatException; {:try_start_1b6 .. :try_end_1d6} :catch_218

    goto :goto_218

    :pswitch_1d7
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/e/l;->Jn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ac$a;->j(Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/ac$a;

    goto :goto_218

    :pswitch_1dd
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/e/l;->Jn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ac$a;->d(Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/ac$a;

    goto :goto_218

    :pswitch_1e3
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/e/l;->Jn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ac$a;->b(Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/ac$a;

    goto :goto_218

    :pswitch_1e9
    :try_start_1e9
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/e/l;->Jn:Ljava/lang/String;

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/g/e/l;->Jn:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ac$a;->e(Ljava/lang/Integer;)Lcom/applovin/exoplayer2/ac$a;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ac$a;->f(Ljava/lang/Integer;)Lcom/applovin/exoplayer2/ac$a;
    :try_end_20c
    .catch Ljava/lang/NumberFormatException; {:try_start_1e9 .. :try_end_20c} :catch_218
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1e9 .. :try_end_20c} :catch_218

    goto :goto_218

    :pswitch_20d
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/e/l;->Jn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ac$a;->i(Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/ac$a;

    goto :goto_218

    :pswitch_213
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/e/l;->Jn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ac$a;->c(Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/ac$a;

    :catch_218
    :goto_218
    return-void

    nop

    :sswitch_data_21a
    .sparse-switch
        0x1437f -> :sswitch_125
        0x143be -> :sswitch_11a
        0x143d1 -> :sswitch_10f
        0x14535 -> :sswitch_104
        0x14536 -> :sswitch_f9
        0x14537 -> :sswitch_ee
        0x1458d -> :sswitch_e3
        0x145b2 -> :sswitch_d8
        0x14650 -> :sswitch_ca
        0x14660 -> :sswitch_bc
        0x272ca3 -> :sswitch_ae
        0x27348d -> :sswitch_a0
        0x2736a3 -> :sswitch_92
        0x2738a1 -> :sswitch_84
        0x2738aa -> :sswitch_76
        0x273d2d -> :sswitch_68
        0x274b93 -> :sswitch_5a
        0x276408 -> :sswitch_4c
        0x276409 -> :sswitch_3e
        0x27640a -> :sswitch_30
        0x276b66 -> :sswitch_22
        0x2785f2 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_274
    .packed-switch 0x0
        :pswitch_213
        :pswitch_20d
        :pswitch_1e9
        :pswitch_1e3
        :pswitch_1dd
        :pswitch_1d7
        :pswitch_1ae
        :pswitch_1a8
        :pswitch_1a1
        :pswitch_192
        :pswitch_213
        :pswitch_20d
        :pswitch_1e9
        :pswitch_163
        :pswitch_134
        :pswitch_1a1
        :pswitch_1a8
        :pswitch_1e3
        :pswitch_1dd
        :pswitch_1d7
        :pswitch_1ae
        :pswitch_192
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    const-class v2, Lcom/applovin/exoplayer2/g/e/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_33

    :cond_10
    check-cast p1, Lcom/applovin/exoplayer2/g/e/l;

    iget-object v2, p0, Lcom/applovin/exoplayer2/g/e/h;->do:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/exoplayer2/g/e/h;->do:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/applovin/exoplayer2/g/e/l;->oc:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/exoplayer2/g/e/l;->oc:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/applovin/exoplayer2/g/e/l;->Jn:Ljava/lang/String;

    iget-object p1, p1, Lcom/applovin/exoplayer2/g/e/l;->Jn:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    return v0

    :cond_33
    :goto_33
    return v1
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/g/e/h;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/applovin/exoplayer2/g/e/l;->oc:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/applovin/exoplayer2/g/e/l;->Jn:Ljava/lang/String;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_21
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/g/e/h;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/exoplayer2/g/e/l;->oc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/exoplayer2/g/e/l;->Jn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/applovin/exoplayer2/g/e/h;->do:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/g/e/l;->oc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/g/e/l;->Jn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
