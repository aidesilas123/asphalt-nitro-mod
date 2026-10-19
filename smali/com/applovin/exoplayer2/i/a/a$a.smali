###### Class com.applovin.exoplayer2.i.a.a.C0042a (com.applovin.exoplayer2.i.a.a$a)
.class final Lcom/applovin/exoplayer2/i/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/i/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/i/a/a$a$a;
    }
.end annotation


# instance fields
.field private OX:I

.field private OY:I

.field private final Pg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a/a$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final Ph:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private final Pi:Ljava/lang/StringBuilder;

.field private Pj:I

.field private Pk:I

.field private Pl:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pg:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Ph:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pi:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/i/a/a$a;->U(I)V

    iput p2, p0, Lcom/applovin/exoplayer2/i/a/a$a;->OY:I

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/i/a/a$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pj:I

    return p0
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/i/a/a$a;I)I
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pl:I

    return p1
.end method

.method private static a(Landroid/text/SpannableStringBuilder;II)V
    .registers 5

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;III)V
    .registers 5

    const/4 v0, -0x1

    if-ne p3, v0, :cond_4

    return-void

    :cond_4
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p3, 0x21

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/i/a/a$a;I)I
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pj:I

    return p1
.end method

.method private static b(Landroid/text/SpannableStringBuilder;II)V
    .registers 5

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/i/a/a$a;I)I
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pk:I

    return p1
.end method

.method private mo()Landroid/text/SpannableString;
    .registers 16

    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pi:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    :cond_14
    :goto_14
    iget-object v11, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pg:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_7b

    iget-object v11, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pg:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/applovin/exoplayer2/i/a/a$a$a;

    iget-boolean v12, v11, Lcom/applovin/exoplayer2/i/a/a$a$a;->Pn:Z

    iget v13, v11, Lcom/applovin/exoplayer2/i/a/a$a$a;->Pm:I

    const/16 v14, 0x8

    if-eq v13, v14, :cond_3c

    const/4 v10, 0x7

    if-ne v13, v10, :cond_31

    const/4 v14, 0x1

    goto :goto_32

    :cond_31
    const/4 v14, 0x0

    :goto_32
    if-ne v13, v10, :cond_35

    goto :goto_3b

    :cond_35
    invoke-static {}, Lcom/applovin/exoplayer2/i/a/a;->ml()[I

    move-result-object v9

    aget v9, v9, v13

    :goto_3b
    move v10, v14

    :cond_3c
    iget v11, v11, Lcom/applovin/exoplayer2/i/a/a$a$a;->start:I

    add-int/lit8 v4, v4, 0x1

    iget-object v13, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pg:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_53

    iget-object v13, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pg:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/applovin/exoplayer2/i/a/a$a$a;

    iget v13, v13, Lcom/applovin/exoplayer2/i/a/a$a$a;->start:I

    goto :goto_54

    :cond_53
    move v13, v1

    :goto_54
    if-ne v11, v13, :cond_57

    goto :goto_14

    :cond_57
    if-eq v5, v3, :cond_60

    if-nez v12, :cond_60

    invoke-static {v0, v5, v11}, Lcom/applovin/exoplayer2/i/a/a$a;->a(Landroid/text/SpannableStringBuilder;II)V

    const/4 v5, -0x1

    goto :goto_65

    :cond_60
    if-ne v5, v3, :cond_65

    if-eqz v12, :cond_65

    move v5, v11

    :cond_65
    :goto_65
    if-eq v6, v3, :cond_6e

    if-nez v10, :cond_6e

    invoke-static {v0, v6, v11}, Lcom/applovin/exoplayer2/i/a/a$a;->b(Landroid/text/SpannableStringBuilder;II)V

    const/4 v6, -0x1

    goto :goto_73

    :cond_6e
    if-ne v6, v3, :cond_73

    if-eqz v10, :cond_73

    move v6, v11

    :cond_73
    :goto_73
    if-eq v9, v8, :cond_14

    invoke-static {v0, v7, v11, v8}, Lcom/applovin/exoplayer2/i/a/a$a;->a(Landroid/text/SpannableStringBuilder;III)V

    move v8, v9

    move v7, v11

    goto :goto_14

    :cond_7b
    if-eq v5, v3, :cond_82

    if-eq v5, v1, :cond_82

    invoke-static {v0, v5, v1}, Lcom/applovin/exoplayer2/i/a/a$a;->a(Landroid/text/SpannableStringBuilder;II)V

    :cond_82
    if-eq v6, v3, :cond_89

    if-eq v6, v1, :cond_89

    invoke-static {v0, v6, v1}, Lcom/applovin/exoplayer2/i/a/a$a;->b(Landroid/text/SpannableStringBuilder;II)V

    :cond_89
    if-eq v7, v1, :cond_8e

    invoke-static {v0, v7, v1, v8}, Lcom/applovin/exoplayer2/i/a/a$a;->a(Landroid/text/SpannableStringBuilder;III)V

    :cond_8e
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method


# virtual methods
.method public U(I)V
    .registers 3

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/a$a;->OX:I

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pg:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Ph:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pi:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 p1, 0xf

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pj:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pk:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pl:I

    return-void
.end method

.method public a(C)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pi:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_f

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pi:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f
    return-void
.end method

.method public ek(I)V
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/a$a;->OX:I

    return-void
.end method

.method public el(I)V
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/a$a;->OY:I

    return-void
.end method

.method public em(I)Lcom/applovin/exoplayer2/i/a;
    .registers 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pk:I

    iget v1, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pl:I

    add-int/2addr v0, v1

    rsub-int/lit8 v1, v0, 0x20

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    iget-object v5, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Ph:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2d

    iget-object v5, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Ph:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5, v1}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_2d
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/a/a$a;->mo()Landroid/text/SpannableString;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_40

    const/4 p1, 0x0

    return-object p1

    :cond_40
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int v4, v0, v1

    const/high16 v5, -0x80000000

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq p1, v5, :cond_4e

    goto :goto_66

    :cond_4e
    iget p1, p0, Lcom/applovin/exoplayer2/i/a/a$a;->OX:I

    if-ne p1, v6, :cond_5d

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v5, 0x3

    if-lt p1, v5, :cond_5b

    if-gez v1, :cond_5d

    :cond_5b
    const/4 p1, 0x1

    goto :goto_66

    :cond_5d
    iget p1, p0, Lcom/applovin/exoplayer2/i/a/a$a;->OX:I

    if-ne p1, v6, :cond_65

    if-lez v4, :cond_65

    const/4 p1, 0x2

    goto :goto_66

    :cond_65
    const/4 p1, 0x0

    :goto_66
    if-eq p1, v7, :cond_7b

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x42000000    # 32.0f

    if-eq p1, v6, :cond_78

    :goto_72
    int-to-float v0, v0

    div-float/2addr v0, v5

    mul-float v0, v0, v4

    add-float/2addr v0, v3

    goto :goto_7d

    :cond_78
    rsub-int/lit8 v0, v1, 0x20

    goto :goto_72

    :cond_7b
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_7d
    iget v1, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pj:I

    const/4 v3, 0x7

    if-le v1, v3, :cond_87

    add-int/lit8 v1, v1, -0xf

    add-int/lit8 v1, v1, -0x2

    goto :goto_8f

    :cond_87
    iget v3, p0, Lcom/applovin/exoplayer2/i/a/a$a;->OX:I

    if-ne v3, v7, :cond_8f

    iget v3, p0, Lcom/applovin/exoplayer2/i/a/a$a;->OY:I

    sub-int/2addr v3, v7

    sub-int/2addr v1, v3

    :cond_8f
    :goto_8f
    new-instance v3, Lcom/applovin/exoplayer2/i/a$a;

    invoke-direct {v3}, Lcom/applovin/exoplayer2/i/a$a;-><init>()V

    invoke-virtual {v3, v2}, Lcom/applovin/exoplayer2/i/a$a;->m(Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object v2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/i/a$a;->a(Landroid/text/Layout$Alignment;)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object v2

    int-to-float v1, v1

    invoke-virtual {v2, v1, v7}, Lcom/applovin/exoplayer2/i/a$a;->b(FI)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/i/a$a;->o(F)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/i/a$a;->eg(I)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/i/a$a;->lU()Lcom/applovin/exoplayer2/i/a;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Ph:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pi:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public m(IZ)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pg:Ljava/util/List;

    new-instance v1, Lcom/applovin/exoplayer2/i/a/a$a$a;

    iget-object v2, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pi:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-direct {v1, p1, p2, v2}, Lcom/applovin/exoplayer2/i/a/a$a$a;-><init>(IZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public mm()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pi:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2c

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pi:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_2c

    iget-object v2, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pg:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/i/a/a$a$a;

    iget v3, v2, Lcom/applovin/exoplayer2/i/a/a$a$a;->start:I

    if-ne v3, v0, :cond_2c

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/applovin/exoplayer2/i/a/a$a$a;->start:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_2c
    return-void
.end method

.method public mn()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Ph:Ljava/util/List;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/a/a$a;->mo()Landroid/text/SpannableString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pi:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Lcom/applovin/exoplayer2/i/a/a$a;->OY:I

    iget v2, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Pj:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1c
    iget-object v2, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Ph:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_2a

    iget-object v2, p0, Lcom/applovin/exoplayer2/i/a/a$a;->Ph:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1c

    :cond_2a
    return-void
.end method
