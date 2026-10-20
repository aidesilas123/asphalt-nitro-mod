###### Class com.applovin.impl.b.g (com.applovin.impl.b.g)
.class public Lcom/applovin/impl/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final aXE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/b/k;",
            ">;"
        }
    .end annotation
.end field

.field private aXF:Landroid/net/Uri;

.field private aXG:Landroid/net/Uri;

.field public final aXi:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/b/k;",
            ">;"
        }
    .end annotation
.end field

.field private dE:I

.field private height:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/b/g;->aXi:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/b/g;->aXE:Ljava/util/Set;

    return-void
.end method

.method public static a(Lcom/applovin/impl/sdk/utils/y;Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/b/g;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_c8

    if-eqz p1, :cond_c0

    const-string v0, "StaticResource"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/utils/y;->dK(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/y;

    move-result-object v0

    if-eqz v0, :cond_aa

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/y;->LK()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_aa

    :cond_18
    new-instance v1, Lcom/applovin/impl/b/g;

    invoke-direct {v1}, Lcom/applovin/impl/b/g;-><init>()V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/y;->LK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/applovin/impl/b/g;->aXF:Landroid/net/Uri;

    const-string v0, "IconClickThrough"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/utils/y;->dL(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/y;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/y;->LK()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/y;->LK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/applovin/impl/b/g;->aXG:Landroid/net/Uri;

    :cond_43
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/y;->LJ()Ljava/util/Map;

    move-result-object v0

    const-string v2, "width"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_5d

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_5d

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_5e

    :cond_5d
    const/4 v0, 0x0

    :goto_5e
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/y;->LJ()Ljava/util/Map;

    move-result-object p0

    const-string v3, "height"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_76

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_76

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_76
    sget-object p0, Lcom/applovin/impl/sdk/c/b;->aPz:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez v0, :cond_a5

    if-lez v2, :cond_a5

    int-to-float p1, v0

    int-to-float v3, v2

    div-float/2addr p1, v3

    float-to-double v3, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    if-lt v0, v2, :cond_9c

    iput p0, v1, Lcom/applovin/impl/b/g;->dE:I

    int-to-double p0, p0

    div-double/2addr p0, v3

    double-to-int p0, p0

    iput p0, v1, Lcom/applovin/impl/b/g;->height:I

    goto :goto_a9

    :cond_9c
    iput p0, v1, Lcom/applovin/impl/b/g;->height:I

    int-to-double p0, p0

    mul-double p0, p0, v3

    double-to-int p0, p0

    iput p0, v1, Lcom/applovin/impl/b/g;->dE:I

    goto :goto_a9

    :cond_a5
    iput p0, v1, Lcom/applovin/impl/b/g;->height:I

    iput p0, v1, Lcom/applovin/impl/b/g;->dE:I

    :goto_a9
    return-object v1

    :cond_aa
    :goto_aa
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p0

    if-eqz p0, :cond_be

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object p0

    const-string p1, "VastIndustryIcon"

    const-string v0, "Unable to create industry icon.  No valid image URL found."

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    const/4 p0, 0x0

    return-object p0

    :cond_c0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No sdk specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No node specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/net/Uri;Landroid/content/Context;Lcom/applovin/impl/sdk/n;)Landroid/widget/ImageView;
    .registers 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Lcom/applovin/impl/sdk/utils/l;->a(Landroid/widget/ImageView;Ljava/lang/String;Lcom/applovin/impl/sdk/n;)V

    return-object v0
.end method


# virtual methods
.method public Mp()Ljava/util/Set;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/b/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/b/g;->aXi:Ljava/util/Set;

    return-object v0
.end method

.method public Mv()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/b/g;->aXF:Landroid/net/Uri;

    return-object v0
.end method

.method public Mw()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/b/g;->aXG:Landroid/net/Uri;

    return-object v0
.end method

.method public Mx()Ljava/util/Set;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/b/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/b/g;->aXE:Ljava/util/Set;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/b/g;->height:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/b/g;->dE:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VastIndustryIcon{imageUri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/b/g;->Mv()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', clickUri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/b/g;->Mw()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/b/g;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/impl/b/g;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
