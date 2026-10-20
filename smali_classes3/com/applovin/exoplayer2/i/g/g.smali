###### Class com.applovin.exoplayer2.i.g.g (com.applovin.exoplayer2.i.g.g)
.class final Lcom/applovin/exoplayer2/i/g/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Qc:I

.field private RE:F

.field private SK:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private SL:I

.field private SM:Z

.field private SN:Z

.field private SQ:I

.field private SR:I

.field private SS:I

.field private ST:I

.field private SU:I

.field private SV:I

.field private SW:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private SX:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private SY:I

.field private SZ:Lcom/applovin/exoplayer2/i/g/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Ta:F

.field private do:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private italic:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SQ:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SR:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SS:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/g/g;->italic:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/g/g;->ST:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SU:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SV:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SY:I

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/applovin/exoplayer2/i/g/g;->Ta:F

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/i/g/g;Z)Lcom/applovin/exoplayer2/i/g/g;
    .registers 6
    .param p1    # Lcom/applovin/exoplayer2/i/g/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_9a

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SM:Z

    if-nez v0, :cond_f

    iget-boolean v0, p1, Lcom/applovin/exoplayer2/i/g/g;->SM:Z

    if-eqz v0, :cond_f

    iget v0, p1, Lcom/applovin/exoplayer2/i/g/g;->SL:I

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/i/g/g;->eD(I)Lcom/applovin/exoplayer2/i/g/g;

    :cond_f
    iget v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SS:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    iget v0, p1, Lcom/applovin/exoplayer2/i/g/g;->SS:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SS:I

    :cond_18
    iget v0, p0, Lcom/applovin/exoplayer2/i/g/g;->italic:I

    if-ne v0, v1, :cond_20

    iget v0, p1, Lcom/applovin/exoplayer2/i/g/g;->italic:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/g/g;->italic:I

    :cond_20
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SK:Ljava/lang/String;

    if-nez v0, :cond_2a

    iget-object v0, p1, Lcom/applovin/exoplayer2/i/g/g;->SK:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SK:Ljava/lang/String;

    :cond_2a
    iget v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SQ:I

    if-ne v0, v1, :cond_32

    iget v0, p1, Lcom/applovin/exoplayer2/i/g/g;->SQ:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SQ:I

    :cond_32
    iget v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SR:I

    if-ne v0, v1, :cond_3a

    iget v0, p1, Lcom/applovin/exoplayer2/i/g/g;->SR:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SR:I

    :cond_3a
    iget v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SV:I

    if-ne v0, v1, :cond_42

    iget v0, p1, Lcom/applovin/exoplayer2/i/g/g;->SV:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SV:I

    :cond_42
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SW:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_4c

    iget-object v0, p1, Lcom/applovin/exoplayer2/i/g/g;->SW:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_4c

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SW:Landroid/text/Layout$Alignment;

    :cond_4c
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SX:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_56

    iget-object v0, p1, Lcom/applovin/exoplayer2/i/g/g;->SX:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_56

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SX:Landroid/text/Layout$Alignment;

    :cond_56
    iget v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SY:I

    if-ne v0, v1, :cond_5e

    iget v0, p1, Lcom/applovin/exoplayer2/i/g/g;->SY:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SY:I

    :cond_5e
    iget v0, p0, Lcom/applovin/exoplayer2/i/g/g;->ST:I

    if-ne v0, v1, :cond_6a

    iget v0, p1, Lcom/applovin/exoplayer2/i/g/g;->ST:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/g/g;->ST:I

    iget v0, p1, Lcom/applovin/exoplayer2/i/g/g;->RE:F

    iput v0, p0, Lcom/applovin/exoplayer2/i/g/g;->RE:F

    :cond_6a
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SZ:Lcom/applovin/exoplayer2/i/g/b;

    if-nez v0, :cond_72

    iget-object v0, p1, Lcom/applovin/exoplayer2/i/g/g;->SZ:Lcom/applovin/exoplayer2/i/g/b;

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SZ:Lcom/applovin/exoplayer2/i/g/b;

    :cond_72
    iget v0, p0, Lcom/applovin/exoplayer2/i/g/g;->Ta:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v2

    if-nez v0, :cond_7f

    iget v0, p1, Lcom/applovin/exoplayer2/i/g/g;->Ta:F

    iput v0, p0, Lcom/applovin/exoplayer2/i/g/g;->Ta:F

    :cond_7f
    if-eqz p2, :cond_8e

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SN:Z

    if-nez v0, :cond_8e

    iget-boolean v0, p1, Lcom/applovin/exoplayer2/i/g/g;->SN:Z

    if-eqz v0, :cond_8e

    iget v0, p1, Lcom/applovin/exoplayer2/i/g/g;->Qc:I

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/i/g/g;->eE(I)Lcom/applovin/exoplayer2/i/g/g;

    :cond_8e
    if-eqz p2, :cond_9a

    iget p2, p0, Lcom/applovin/exoplayer2/i/g/g;->SU:I

    if-ne p2, v1, :cond_9a

    iget p1, p1, Lcom/applovin/exoplayer2/i/g/g;->SU:I

    if-eq p1, v1, :cond_9a

    iput p1, p0, Lcom/applovin/exoplayer2/i/g/g;->SU:I

    :cond_9a
    return-object p0
.end method


# virtual methods
.method public S(Z)Lcom/applovin/exoplayer2/i/g/g;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/g/g;->SQ:I

    return-object p0
.end method

.method public T(Z)Lcom/applovin/exoplayer2/i/g/g;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/g/g;->SR:I

    return-object p0
.end method

.method public U(Z)Lcom/applovin/exoplayer2/i/g/g;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/g/g;->SS:I

    return-object p0
.end method

.method public V(Z)Lcom/applovin/exoplayer2/i/g/g;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/g/g;->italic:I

    return-object p0
.end method

.method public W(Z)Lcom/applovin/exoplayer2/i/g/g;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/g/g;->SY:I

    return-object p0
.end method

.method public a(Lcom/applovin/exoplayer2/i/g/b;)Lcom/applovin/exoplayer2/i/g/g;
    .registers 2
    .param p1    # Lcom/applovin/exoplayer2/i/g/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/g/g;->SZ:Lcom/applovin/exoplayer2/i/g/b;

    return-object p0
.end method

.method public au(Ljava/lang/String;)Lcom/applovin/exoplayer2/i/g/g;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/g/g;->SK:Ljava/lang/String;

    return-object p0
.end method

.method public av(Ljava/lang/String;)Lcom/applovin/exoplayer2/i/g/g;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/g/g;->do:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;
    .registers 3
    .param p1    # Lcom/applovin/exoplayer2/i/g/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/i/g/g;->a(Lcom/applovin/exoplayer2/i/g/g;Z)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/text/Layout$Alignment;)Lcom/applovin/exoplayer2/i/g/g;
    .registers 2
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/g/g;->SW:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public d(Landroid/text/Layout$Alignment;)Lcom/applovin/exoplayer2/i/g/g;
    .registers 2
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/g/g;->SX:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public eD(I)Lcom/applovin/exoplayer2/i/g/g;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/g/g;->SL:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/i/g/g;->SM:Z

    return-object p0
.end method

.method public eE(I)Lcom/applovin/exoplayer2/i/g/g;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/g/g;->Qc:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/i/g/g;->SN:Z

    return-object p0
.end method

.method public eF(I)Lcom/applovin/exoplayer2/i/g/g;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/g/g;->SU:I

    return-object p0
.end method

.method public eG(I)Lcom/applovin/exoplayer2/i/g/g;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/g/g;->SV:I

    return-object p0
.end method

.method public eH(I)Lcom/applovin/exoplayer2/i/g/g;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/g/g;->ST:I

    return-object p0
.end method

.method public mH()I
    .registers 5

    iget v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SS:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    iget v2, p0, Lcom/applovin/exoplayer2/i/g/g;->italic:I

    if-ne v2, v1, :cond_a

    return v1

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iget v3, p0, Lcom/applovin/exoplayer2/i/g/g;->italic:I

    if-ne v3, v2, :cond_16

    const/4 v1, 0x2

    :cond_16
    or-int/2addr v0, v1

    return v0
.end method

.method public mI()Z
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SQ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public mJ()Z
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SR:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public mK()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SK:Ljava/lang/String;

    return-object v0
.end method

.method public mL()I
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SM:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SL:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mM()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SM:Z

    return v0
.end method

.method public mN()I
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SN:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/applovin/exoplayer2/i/g/g;->Qc:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mO()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SN:Z

    return v0
.end method

.method public mP()F
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/i/g/g;->Ta:F

    return v0
.end method

.method public mQ()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/g/g;->do:Ljava/lang/String;

    return-object v0
.end method

.method public mR()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SU:I

    return v0
.end method

.method public mS()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SV:I

    return v0
.end method

.method public mT()Landroid/text/Layout$Alignment;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SW:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public mU()Landroid/text/Layout$Alignment;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SX:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public mV()Z
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SY:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public mW()Lcom/applovin/exoplayer2/i/g/b;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/g/g;->SZ:Lcom/applovin/exoplayer2/i/g/b;

    return-object v0
.end method

.method public mX()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/i/g/g;->ST:I

    return v0
.end method

.method public mY()F
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/i/g/g;->RE:F

    return v0
.end method

.method public s(F)Lcom/applovin/exoplayer2/i/g/g;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/g/g;->Ta:F

    return-object p0
.end method

.method public t(F)Lcom/applovin/exoplayer2/i/g/g;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/i/g/g;->RE:F

    return-object p0
.end method
