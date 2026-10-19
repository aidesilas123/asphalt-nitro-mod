###### Class com.applovin.exoplayer2.i.a (com.applovin.exoplayer2.i.a)
.class public final Lcom/applovin/exoplayer2/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/i/a$a;
    }
.end annotation


# static fields
.field public static final NV:Lcom/applovin/exoplayer2/i/a;

.field public static final br:Lcom/applovin/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/g$a<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final NW:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final NX:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final NY:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final NZ:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final Oa:F

.field public final Ob:I

.field public final Oc:I

.field public final Od:F

.field public final Oe:I

.field public final Of:F

.field public final Og:F

.field public final Oh:Z

.field public final Oi:I

.field public final Oj:I

.field public final Ok:F

.field public final Ol:I

.field public final Om:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/applovin/exoplayer2/i/a$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/i/a$a;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/i/a$a;->m(Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/i/a$a;->lU()Lcom/applovin/exoplayer2/i/a;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/i/a;->NV:Lcom/applovin/exoplayer2/i/a;

    sget-object v0, Lcom/applovin/exoplayer2/i/n;->a:Lcom/applovin/exoplayer2/i/n;

    sput-object v0, Lcom/applovin/exoplayer2/i/a;->br:Lcom/applovin/exoplayer2/g$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V
    .registers 22
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez v1, :cond_c

    invoke-static {p4}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_c
    if-nez v2, :cond_10

    const/4 v3, 0x1

    goto :goto_11

    :cond_10
    const/4 v3, 0x0

    :goto_11
    invoke-static {v3}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    :goto_14
    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_20

    invoke-static {p1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/exoplayer2/i/a;->NW:Ljava/lang/CharSequence;

    :goto_1e
    move-object v1, p2

    goto :goto_2d

    :cond_20
    if-eqz v1, :cond_29

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/exoplayer2/i/a;->NW:Ljava/lang/CharSequence;

    goto :goto_1e

    :cond_29
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/applovin/exoplayer2/i/a;->NW:Ljava/lang/CharSequence;

    goto :goto_1e

    :goto_2d
    iput-object v1, v0, Lcom/applovin/exoplayer2/i/a;->NX:Landroid/text/Layout$Alignment;

    move-object v1, p3

    iput-object v1, v0, Lcom/applovin/exoplayer2/i/a;->NY:Landroid/text/Layout$Alignment;

    iput-object v2, v0, Lcom/applovin/exoplayer2/i/a;->NZ:Landroid/graphics/Bitmap;

    move v1, p5

    iput v1, v0, Lcom/applovin/exoplayer2/i/a;->Oa:F

    move v1, p6

    iput v1, v0, Lcom/applovin/exoplayer2/i/a;->Ob:I

    move v1, p7

    iput v1, v0, Lcom/applovin/exoplayer2/i/a;->Oc:I

    move v1, p8

    iput v1, v0, Lcom/applovin/exoplayer2/i/a;->Od:F

    move v1, p9

    iput v1, v0, Lcom/applovin/exoplayer2/i/a;->Oe:I

    move/from16 v1, p12

    iput v1, v0, Lcom/applovin/exoplayer2/i/a;->Of:F

    move/from16 v1, p13

    iput v1, v0, Lcom/applovin/exoplayer2/i/a;->Og:F

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/applovin/exoplayer2/i/a;->Oh:Z

    move/from16 v1, p15

    iput v1, v0, Lcom/applovin/exoplayer2/i/a;->Oi:I

    move v1, p10

    iput v1, v0, Lcom/applovin/exoplayer2/i/a;->Oj:I

    move v1, p11

    iput v1, v0, Lcom/applovin/exoplayer2/i/a;->Ok:F

    move/from16 v1, p16

    iput v1, v0, Lcom/applovin/exoplayer2/i/a;->Ol:I

    move/from16 v1, p17

    iput v1, v0, Lcom/applovin/exoplayer2/i/a;->Om:F

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/applovin/exoplayer2/i/a$1;)V
    .registers 19

    invoke-direct/range {p0 .. p17}, Lcom/applovin/exoplayer2/i/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/i/a;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/i/a;->z(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/i/a;

    move-result-object p0

    return-object p0
.end method

.method private static t(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final z(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/i/a;
    .registers 6

    new-instance v0, Lcom/applovin/exoplayer2/i/a$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/i/a$a;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/i/a$a;->m(Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/i/a$a;

    :cond_13
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Landroid/text/Layout$Alignment;

    if-eqz v2, :cond_23

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/i/a$a;->a(Landroid/text/Layout$Alignment;)Lcom/applovin/exoplayer2/i/a$a;

    :cond_23
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Landroid/text/Layout$Alignment;

    if-eqz v2, :cond_33

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/i/a$a;->b(Landroid/text/Layout$Alignment;)Lcom/applovin/exoplayer2/i/a$a;

    :cond_33
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_43

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/i/a$a;->a(Landroid/graphics/Bitmap;)Lcom/applovin/exoplayer2/i/a$a;

    :cond_43
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v3}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/applovin/exoplayer2/i/a$a;->b(FI)Lcom/applovin/exoplayer2/i/a$a;

    :cond_6c
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/i/a$a;->ef(I)Lcom/applovin/exoplayer2/i/a$a;

    :cond_82
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/i/a$a;->o(F)Lcom/applovin/exoplayer2/i/a$a;

    :cond_98
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/i/a$a;->eg(I)Lcom/applovin/exoplayer2/i/a$a;

    :cond_af
    const/16 v2, 0xa

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_da

    const/16 v3, 0x9

    invoke-static {v3}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_da

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v3}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/applovin/exoplayer2/i/a$a;->c(FI)Lcom/applovin/exoplayer2/i/a$a;

    :cond_da
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f1

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/i/a$a;->p(F)Lcom/applovin/exoplayer2/i/a$a;

    :cond_f1
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_108

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/i/a$a;->q(F)Lcom/applovin/exoplayer2/i/a$a;

    :cond_108
    const/16 v2, 0xd

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11f

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/i/a$a;->eh(I)Lcom/applovin/exoplayer2/i/a$a;

    :cond_11f
    const/16 v2, 0xe

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_12e

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/i/a$a;->lT()Lcom/applovin/exoplayer2/i/a$a;

    :cond_12e
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_145

    invoke-static {v1}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/i/a$a;->ei(I)Lcom/applovin/exoplayer2/i/a$a;

    :cond_145
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15c

    invoke-static {v1}, Lcom/applovin/exoplayer2/i/a;->t(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/applovin/exoplayer2/i/a$a;->r(F)Lcom/applovin/exoplayer2/i/a$a;

    :cond_15c
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/i/a$a;->lU()Lcom/applovin/exoplayer2/i/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
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

    if-eqz p1, :cond_99

    const-class v2, Lcom/applovin/exoplayer2/i/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    goto/16 :goto_99

    :cond_11
    check-cast p1, Lcom/applovin/exoplayer2/i/a;

    iget-object v2, p0, Lcom/applovin/exoplayer2/i/a;->NW:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/applovin/exoplayer2/i/a;->NW:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_97

    iget-object v2, p0, Lcom/applovin/exoplayer2/i/a;->NX:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Lcom/applovin/exoplayer2/i/a;->NX:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_97

    iget-object v2, p0, Lcom/applovin/exoplayer2/i/a;->NY:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Lcom/applovin/exoplayer2/i/a;->NY:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_97

    iget-object v2, p0, Lcom/applovin/exoplayer2/i/a;->NZ:Landroid/graphics/Bitmap;

    if-nez v2, :cond_32

    iget-object v2, p1, Lcom/applovin/exoplayer2/i/a;->NZ:Landroid/graphics/Bitmap;

    if-nez v2, :cond_97

    goto :goto_3c

    :cond_32
    iget-object v3, p1, Lcom/applovin/exoplayer2/i/a;->NZ:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_97

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_97

    :goto_3c
    iget v2, p0, Lcom/applovin/exoplayer2/i/a;->Oa:F

    iget v3, p1, Lcom/applovin/exoplayer2/i/a;->Oa:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_97

    iget v2, p0, Lcom/applovin/exoplayer2/i/a;->Ob:I

    iget v3, p1, Lcom/applovin/exoplayer2/i/a;->Ob:I

    if-ne v2, v3, :cond_97

    iget v2, p0, Lcom/applovin/exoplayer2/i/a;->Oc:I

    iget v3, p1, Lcom/applovin/exoplayer2/i/a;->Oc:I

    if-ne v2, v3, :cond_97

    iget v2, p0, Lcom/applovin/exoplayer2/i/a;->Od:F

    iget v3, p1, Lcom/applovin/exoplayer2/i/a;->Od:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_97

    iget v2, p0, Lcom/applovin/exoplayer2/i/a;->Oe:I

    iget v3, p1, Lcom/applovin/exoplayer2/i/a;->Oe:I

    if-ne v2, v3, :cond_97

    iget v2, p0, Lcom/applovin/exoplayer2/i/a;->Of:F

    iget v3, p1, Lcom/applovin/exoplayer2/i/a;->Of:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_97

    iget v2, p0, Lcom/applovin/exoplayer2/i/a;->Og:F

    iget v3, p1, Lcom/applovin/exoplayer2/i/a;->Og:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_97

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/i/a;->Oh:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/i/a;->Oh:Z

    if-ne v2, v3, :cond_97

    iget v2, p0, Lcom/applovin/exoplayer2/i/a;->Oi:I

    iget v3, p1, Lcom/applovin/exoplayer2/i/a;->Oi:I

    if-ne v2, v3, :cond_97

    iget v2, p0, Lcom/applovin/exoplayer2/i/a;->Oj:I

    iget v3, p1, Lcom/applovin/exoplayer2/i/a;->Oj:I

    if-ne v2, v3, :cond_97

    iget v2, p0, Lcom/applovin/exoplayer2/i/a;->Ok:F

    iget v3, p1, Lcom/applovin/exoplayer2/i/a;->Ok:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_97

    iget v2, p0, Lcom/applovin/exoplayer2/i/a;->Ol:I

    iget v3, p1, Lcom/applovin/exoplayer2/i/a;->Ol:I

    if-ne v2, v3, :cond_97

    iget v2, p0, Lcom/applovin/exoplayer2/i/a;->Om:F

    iget p1, p1, Lcom/applovin/exoplayer2/i/a;->Om:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_97

    goto :goto_98

    :cond_97
    const/4 v0, 0x0

    :goto_98
    return v0

    :cond_99
    :goto_99
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a;->NW:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a;->NX:Landroid/text/Layout$Alignment;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a;->NY:Landroid/text/Layout$Alignment;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a;->NZ:Landroid/graphics/Bitmap;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/applovin/exoplayer2/i/a;->Oa:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/applovin/exoplayer2/i/a;->Ob:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/applovin/exoplayer2/i/a;->Oc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/applovin/exoplayer2/i/a;->Od:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/applovin/exoplayer2/i/a;->Oe:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/applovin/exoplayer2/i/a;->Of:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lcom/applovin/exoplayer2/i/a;->Og:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/i/a;->Oh:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/applovin/exoplayer2/i/a;->Oi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Lcom/applovin/exoplayer2/i/a;->Oj:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lcom/applovin/exoplayer2/i/a;->Ok:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Lcom/applovin/exoplayer2/i/a;->Ol:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Lcom/applovin/exoplayer2/i/a;->Om:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lP()Lcom/applovin/exoplayer2/i/a$a;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/i/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/exoplayer2/i/a$a;-><init>(Lcom/applovin/exoplayer2/i/a;Lcom/applovin/exoplayer2/i/a$1;)V

    return-object v0
.end method

###### Class com.applovin.exoplayer2.i.a.AnonymousClass1 (com.applovin.exoplayer2.i.a$1)
.class synthetic Lcom/applovin/exoplayer2/i/a$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.applovin.exoplayer2.i.a.C0041a (com.applovin.exoplayer2.i.a$a)
.class public final Lcom/applovin/exoplayer2/i/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private NW:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private NX:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private NY:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private NZ:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Oa:F

.field private Ob:I

.field private Oc:I

.field private Od:F

.field private Oe:I

.field private Of:F

.field private Og:F

.field private Oh:Z

.field private Oi:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private Oj:I

.field private Ok:F

.field private Ol:I

.field private Om:F


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a$a;->NW:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a$a;->NZ:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a$a;->NX:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a$a;->NY:Landroid/text/Layout$Alignment;

    const v0, -0x800001

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Oa:F

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/applovin/exoplayer2/i/a$a;->Ob:I

    iput v1, p0, Lcom/applovin/exoplayer2/i/a$a;->Oc:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Od:F

    iput v1, p0, Lcom/applovin/exoplayer2/i/a$a;->Oe:I

    iput v1, p0, Lcom/applovin/exoplayer2/i/a$a;->Oj:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Ok:F

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Of:F

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Og:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Oh:Z

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Oi:I

    iput v1, p0, Lcom/applovin/exoplayer2/i/a$a;->Ol:I

    return-void
.end method

.method private constructor <init>(Lcom/applovin/exoplayer2/i/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/applovin/exoplayer2/i/a;->NW:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a$a;->NW:Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/applovin/exoplayer2/i/a;->NZ:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a$a;->NZ:Landroid/graphics/Bitmap;

    iget-object v0, p1, Lcom/applovin/exoplayer2/i/a;->NX:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a$a;->NX:Landroid/text/Layout$Alignment;

    iget-object v0, p1, Lcom/applovin/exoplayer2/i/a;->NY:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a$a;->NY:Landroid/text/Layout$Alignment;

    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->Oa:F

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Oa:F

    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->Ob:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Ob:I

    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->Oc:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Oc:I

    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->Od:F

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Od:F

    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->Oe:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Oe:I

    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->Oj:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Oj:I

    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->Ok:F

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Ok:F

    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->Of:F

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Of:F

    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->Og:F

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Og:F

    iget-boolean v0, p1, Lcom/applovin/exoplayer2/i/a;->Oh:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Oh:Z

    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->Oi:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Oi:I

    iget v0, p1, Lcom/applovin/exoplayer2/i/a;->Ol:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Ol:I

    iget p1, p1, Lcom/applovin/exoplayer2/i/a;->Om:F

    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->Om:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/i/a;Lcom/applovin/exoplayer2/i/a$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/i/a$a;-><init>(Lcom/applovin/exoplayer2/i/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Lcom/applovin/exoplayer2/i/a$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/a$a;->NZ:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public a(Landroid/text/Layout$Alignment;)Lcom/applovin/exoplayer2/i/a$a;
    .registers 2
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/a$a;->NX:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public b(FI)Lcom/applovin/exoplayer2/i/a$a;
    .registers 3

    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->Oa:F

    iput p2, p0, Lcom/applovin/exoplayer2/i/a$a;->Ob:I

    return-object p0
.end method

.method public b(Landroid/text/Layout$Alignment;)Lcom/applovin/exoplayer2/i/a$a;
    .registers 2
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/a$a;->NY:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public c(FI)Lcom/applovin/exoplayer2/i/a$a;
    .registers 3

    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->Ok:F

    iput p2, p0, Lcom/applovin/exoplayer2/i/a$a;->Oj:I

    return-object p0
.end method

.method public ef(I)Lcom/applovin/exoplayer2/i/a$a;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->Oc:I

    return-object p0
.end method

.method public eg(I)Lcom/applovin/exoplayer2/i/a$a;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->Oe:I

    return-object p0
.end method

.method public eh(I)Lcom/applovin/exoplayer2/i/a$a;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->Oi:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/i/a$a;->Oh:Z

    return-object p0
.end method

.method public ei(I)Lcom/applovin/exoplayer2/i/a$a;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->Ol:I

    return-object p0
.end method

.method public lQ()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a$a;->NW:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public lR()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Oc:I

    return v0
.end method

.method public lS()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Oe:I

    return v0
.end method

.method public lT()Lcom/applovin/exoplayer2/i/a$a;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/i/a$a;->Oh:Z

    return-object p0
.end method

.method public lU()Lcom/applovin/exoplayer2/i/a;
    .registers 23

    move-object/from16 v0, p0

    new-instance v20, Lcom/applovin/exoplayer2/i/a;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/applovin/exoplayer2/i/a$a;->NW:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/applovin/exoplayer2/i/a$a;->NX:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Lcom/applovin/exoplayer2/i/a$a;->NY:Landroid/text/Layout$Alignment;

    iget-object v5, v0, Lcom/applovin/exoplayer2/i/a$a;->NZ:Landroid/graphics/Bitmap;

    iget v6, v0, Lcom/applovin/exoplayer2/i/a$a;->Oa:F

    iget v7, v0, Lcom/applovin/exoplayer2/i/a$a;->Ob:I

    iget v8, v0, Lcom/applovin/exoplayer2/i/a$a;->Oc:I

    iget v9, v0, Lcom/applovin/exoplayer2/i/a$a;->Od:F

    iget v10, v0, Lcom/applovin/exoplayer2/i/a$a;->Oe:I

    iget v11, v0, Lcom/applovin/exoplayer2/i/a$a;->Oj:I

    iget v12, v0, Lcom/applovin/exoplayer2/i/a$a;->Ok:F

    iget v13, v0, Lcom/applovin/exoplayer2/i/a$a;->Of:F

    iget v14, v0, Lcom/applovin/exoplayer2/i/a$a;->Og:F

    iget-boolean v15, v0, Lcom/applovin/exoplayer2/i/a$a;->Oh:Z

    move-object/from16 v21, v1

    iget v1, v0, Lcom/applovin/exoplayer2/i/a$a;->Oi:I

    move/from16 v16, v1

    iget v1, v0, Lcom/applovin/exoplayer2/i/a$a;->Ol:I

    move/from16 v17, v1

    iget v1, v0, Lcom/applovin/exoplayer2/i/a$a;->Om:F

    move/from16 v18, v1

    const/16 v19, 0x0

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lcom/applovin/exoplayer2/i/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/applovin/exoplayer2/i/a$1;)V

    return-object v20
.end method

.method public m(Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/i/a$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/a$a;->NW:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public o(F)Lcom/applovin/exoplayer2/i/a$a;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->Od:F

    return-object p0
.end method

.method public p(F)Lcom/applovin/exoplayer2/i/a$a;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->Of:F

    return-object p0
.end method

.method public q(F)Lcom/applovin/exoplayer2/i/a$a;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->Og:F

    return-object p0
.end method

.method public r(F)Lcom/applovin/exoplayer2/i/a$a;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/a$a;->Om:F

    return-object p0
.end method

###### Class com.applovin.exoplayer2.i.n (com.applovin.exoplayer2.i.n)
.class public final synthetic Lcom/applovin/exoplayer2/i/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/g$a;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/i/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/i/n;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/i/n;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/i/n;->a:Lcom/applovin/exoplayer2/i/n;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/g;
    .registers 2

    invoke-static {p1}, Lcom/applovin/exoplayer2/i/a;->a(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/i/a;

    move-result-object p1

    return-object p1
.end method
