###### Class com.tapjoy.internal.r6 (com.tapjoy.internal.r6)
.class public final Lcom/tapjoy/internal/r6;
.super Lcom/tapjoy/internal/n5;
.source "SourceFile"


# instance fields
.field public final d:Lcom/tapjoy/internal/t3;

.field public final e:Lcom/tapjoy/internal/c7;

.field public f:Lcom/tapjoy/internal/l1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/internal/t3;Lcom/tapjoy/internal/c7;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/n5;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tapjoy/internal/r6;->d:Lcom/tapjoy/internal/t3;

    iput-object p3, p0, Lcom/tapjoy/internal/r6;->e:Lcom/tapjoy/internal/c7;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapjoy/internal/r6;->f:Lcom/tapjoy/internal/l1;

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .registers 10

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/l1;->a(Landroid/content/Context;)Lcom/tapjoy/internal/l1;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/r6;->d:Lcom/tapjoy/internal/t3;

    iget-object v2, v1, Lcom/tapjoy/internal/t3;->c:Lcom/tapjoy/internal/n3;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1a

    iget-object v5, v1, Lcom/tapjoy/internal/t3;->a:Lcom/tapjoy/internal/n3;

    if-eqz v5, :cond_1a

    iget-object v5, v1, Lcom/tapjoy/internal/t3;->e:Lcom/tapjoy/internal/n3;

    if-eqz v5, :cond_1a

    const/4 v5, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v5, 0x0

    :goto_1b
    const/4 v6, 0x3

    if-eqz v5, :cond_a6

    if-eqz v2, :cond_2a

    iget-object v2, v1, Lcom/tapjoy/internal/t3;->b:Lcom/tapjoy/internal/n3;

    if-eqz v2, :cond_2a

    iget-object v1, v1, Lcom/tapjoy/internal/t3;->f:Lcom/tapjoy/internal/n3;

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    if-eqz v1, :cond_77

    sget-object v1, Lcom/tapjoy/internal/l1;->b:Lcom/tapjoy/internal/l1;

    if-eq v0, v1, :cond_38

    iget-object v2, v0, Lcom/tapjoy/internal/l1;->q:Lcom/tapjoy/internal/l1;

    if-ne v2, v1, :cond_36

    goto :goto_38

    :cond_36
    const/4 v2, 0x0

    goto :goto_39

    :cond_38
    :goto_38
    const/4 v2, 0x1

    :goto_39
    if-eqz v2, :cond_3c

    goto :goto_72

    :cond_3c
    sget-object v2, Lcom/tapjoy/internal/l1;->c:Lcom/tapjoy/internal/l1;

    if-eq v0, v2, :cond_47

    iget-object v0, v0, Lcom/tapjoy/internal/l1;->q:Lcom/tapjoy/internal/l1;

    if-ne v0, v2, :cond_45

    goto :goto_47

    :cond_45
    const/4 v0, 0x0

    goto :goto_48

    :cond_47
    :goto_47
    const/4 v0, 0x1

    :goto_48
    if-eqz v0, :cond_4b

    goto :goto_71

    :cond_4b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v3, :cond_63

    const/4 v5, 0x2

    if-eq v0, v5, :cond_61

    sget-object v0, Lcom/tapjoy/internal/l1;->a:Lcom/tapjoy/internal/l1;

    goto :goto_64

    :cond_61
    move-object v0, v2

    goto :goto_64

    :cond_63
    move-object v0, v1

    :goto_64
    if-eq v0, v1, :cond_6d

    iget-object v0, v0, Lcom/tapjoy/internal/l1;->q:Lcom/tapjoy/internal/l1;

    if-ne v0, v1, :cond_6b

    goto :goto_6d

    :cond_6b
    const/4 v0, 0x0

    goto :goto_6e

    :cond_6d
    :goto_6d
    const/4 v0, 0x1

    :goto_6e
    if-eqz v0, :cond_71

    goto :goto_72

    :cond_71
    :goto_71
    move-object v1, v2

    :goto_72
    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/n5;->setRotationCount(I)V

    goto/16 :goto_d4

    :cond_77
    sget-object v1, Lcom/tapjoy/internal/l1;->b:Lcom/tapjoy/internal/l1;

    sget-object v2, Lcom/tapjoy/internal/l1;->c:Lcom/tapjoy/internal/l1;

    if-eq v0, v2, :cond_84

    iget-object v5, v0, Lcom/tapjoy/internal/l1;->q:Lcom/tapjoy/internal/l1;

    if-ne v5, v2, :cond_82

    goto :goto_84

    :cond_82
    const/4 v2, 0x0

    goto :goto_85

    :cond_84
    :goto_84
    const/4 v2, 0x1

    :goto_85
    if-eqz v2, :cond_a2

    iget-object v2, v0, Lcom/tapjoy/internal/l1;->r:Lcom/tapjoy/internal/l1;

    if-eqz v2, :cond_97

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iget-object v0, v0, Lcom/tapjoy/internal/l1;->r:Lcom/tapjoy/internal/l1;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int/2addr v2, v0

    goto :goto_98

    :cond_97
    const/4 v2, 0x0

    :goto_98
    if-ne v2, v6, :cond_9e

    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/n5;->setRotationCount(I)V

    goto :goto_d4

    :cond_9e
    invoke-virtual {p0, v6}, Lcom/tapjoy/internal/n5;->setRotationCount(I)V

    goto :goto_d4

    :cond_a2
    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/n5;->setRotationCount(I)V

    goto :goto_d4

    :cond_a6
    sget-object v1, Lcom/tapjoy/internal/l1;->c:Lcom/tapjoy/internal/l1;

    sget-object v2, Lcom/tapjoy/internal/l1;->b:Lcom/tapjoy/internal/l1;

    if-eq v0, v2, :cond_b3

    iget-object v5, v0, Lcom/tapjoy/internal/l1;->q:Lcom/tapjoy/internal/l1;

    if-ne v5, v2, :cond_b1

    goto :goto_b3

    :cond_b1
    const/4 v2, 0x0

    goto :goto_b4

    :cond_b3
    :goto_b3
    const/4 v2, 0x1

    :goto_b4
    if-eqz v2, :cond_d1

    iget-object v2, v0, Lcom/tapjoy/internal/l1;->r:Lcom/tapjoy/internal/l1;

    if-eqz v2, :cond_c6

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iget-object v0, v0, Lcom/tapjoy/internal/l1;->r:Lcom/tapjoy/internal/l1;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int/2addr v2, v0

    goto :goto_c7

    :cond_c6
    const/4 v2, 0x0

    :goto_c7
    if-ne v2, v6, :cond_cd

    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/n5;->setRotationCount(I)V

    goto :goto_d4

    :cond_cd
    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/n5;->setRotationCount(I)V

    goto :goto_d4

    :cond_d1
    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/n5;->setRotationCount(I)V

    :goto_d4
    iget-object v0, p0, Lcom/tapjoy/internal/r6;->f:Lcom/tapjoy/internal/l1;

    if-eq v0, v1, :cond_e9

    iput-object v1, p0, Lcom/tapjoy/internal/r6;->f:Lcom/tapjoy/internal/l1;

    iget-object v0, p0, Lcom/tapjoy/internal/r6;->e:Lcom/tapjoy/internal/c7;

    sget-object v2, Lcom/tapjoy/internal/l1;->c:Lcom/tapjoy/internal/l1;

    if-eq v1, v2, :cond_e6

    iget-object v1, v1, Lcom/tapjoy/internal/l1;->q:Lcom/tapjoy/internal/l1;

    if-ne v1, v2, :cond_e5

    goto :goto_e6

    :cond_e5
    const/4 v3, 0x0

    :cond_e6
    :goto_e6
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/c7;->setLandscape(Z)V

    :cond_e9
    invoke-super {p0, p1, p2}, Lcom/tapjoy/internal/n5;->onMeasure(II)V

    return-void
.end method
