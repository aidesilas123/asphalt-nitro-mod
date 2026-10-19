###### Class com.applovin.impl.adview.u (com.applovin.impl.adview.u)
.class public Lcom/applovin/impl/adview/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aid:I

.field private final aie:I

.field private final aif:I

.field private final aig:I

.field private final aih:Z

.field private final aii:I

.field private final aij:I

.field private final aik:I

.field private final ail:F

.field private final aim:F


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/n;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating video button properties with JSON = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->maybeConvertToIndentedString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoButtonProperties"

    invoke-virtual {p2, v1, v0}, Lcom/applovin/impl/sdk/x;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    const/16 p2, 0x40

    const-string v0, "width"

    invoke-static {p1, v0, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/applovin/impl/adview/u;->aid:I

    const/4 p2, 0x7

    const-string v0, "height"

    invoke-static {p1, v0, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/applovin/impl/adview/u;->aie:I

    const/16 p2, 0x14

    const-string v0, "margin"

    invoke-static {p1, v0, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/applovin/impl/adview/u;->aif:I

    const/16 p2, 0x55

    const-string v0, "gravity"

    invoke-static {p1, v0, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/applovin/impl/adview/u;->aig:I

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "tap_to_fade"

    invoke-static {p1, v0, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/applovin/impl/adview/u;->aih:Z

    const-string p2, "tap_to_fade_duration_milliseconds"

    const/16 v0, 0x1f4

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/applovin/impl/adview/u;->aii:I

    const-string p2, "fade_in_duration_milliseconds"

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/applovin/impl/adview/u;->aij:I

    const-string p2, "fade_out_duration_milliseconds"

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/applovin/impl/adview/u;->aik:I

    const/high16 p2, 0x3f800000    # 1.0f

    const-string v0, "fade_in_delay_seconds"

    invoke-static {p1, v0, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getFloat(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/applovin/impl/adview/u;->ail:F

    const/high16 p2, 0x40c00000    # 6.0f

    const-string v0, "fade_out_delay_seconds"

    invoke-static {p1, v0, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getFloat(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/applovin/impl/adview/u;->aim:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_64

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_64

    :cond_12
    check-cast p1, Lcom/applovin/impl/adview/u;

    iget v2, p0, Lcom/applovin/impl/adview/u;->aid:I

    iget v3, p1, Lcom/applovin/impl/adview/u;->aid:I

    if-eq v2, v3, :cond_1b

    return v1

    :cond_1b
    iget v2, p0, Lcom/applovin/impl/adview/u;->aie:I

    iget v3, p1, Lcom/applovin/impl/adview/u;->aie:I

    if-eq v2, v3, :cond_22

    return v1

    :cond_22
    iget v2, p0, Lcom/applovin/impl/adview/u;->aif:I

    iget v3, p1, Lcom/applovin/impl/adview/u;->aif:I

    if-eq v2, v3, :cond_29

    return v1

    :cond_29
    iget v2, p0, Lcom/applovin/impl/adview/u;->aig:I

    iget v3, p1, Lcom/applovin/impl/adview/u;->aig:I

    if-eq v2, v3, :cond_30

    return v1

    :cond_30
    iget-boolean v2, p0, Lcom/applovin/impl/adview/u;->aih:Z

    iget-boolean v3, p1, Lcom/applovin/impl/adview/u;->aih:Z

    if-eq v2, v3, :cond_37

    return v1

    :cond_37
    iget v2, p0, Lcom/applovin/impl/adview/u;->aii:I

    iget v3, p1, Lcom/applovin/impl/adview/u;->aii:I

    if-eq v2, v3, :cond_3e

    return v1

    :cond_3e
    iget v2, p0, Lcom/applovin/impl/adview/u;->aij:I

    iget v3, p1, Lcom/applovin/impl/adview/u;->aij:I

    if-eq v2, v3, :cond_45

    return v1

    :cond_45
    iget v2, p0, Lcom/applovin/impl/adview/u;->aik:I

    iget v3, p1, Lcom/applovin/impl/adview/u;->aik:I

    if-eq v2, v3, :cond_4c

    return v1

    :cond_4c
    iget v2, p1, Lcom/applovin/impl/adview/u;->ail:F

    iget v3, p0, Lcom/applovin/impl/adview/u;->ail:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_57

    return v1

    :cond_57
    iget p1, p1, Lcom/applovin/impl/adview/u;->aim:F

    iget v2, p0, Lcom/applovin/impl/adview/u;->aim:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_62

    goto :goto_63

    :cond_62
    const/4 v0, 0x0

    :goto_63
    return v0

    :cond_64
    :goto_64
    return v1
.end method

.method public hashCode()I
    .registers 6

    iget v0, p0, Lcom/applovin/impl/adview/u;->aid:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/impl/adview/u;->aie:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/impl/adview/u;->aif:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/impl/adview/u;->aig:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/applovin/impl/adview/u;->aih:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/impl/adview/u;->aii:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/impl/adview/u;->aij:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/impl/adview/u;->aik:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/impl/adview/u;->ail:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_34

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/impl/adview/u;->aim:F

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_42

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :cond_42
    add-int/2addr v0, v2

    return v0
.end method

.method public rW()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/adview/u;->aid:I

    return v0
.end method

.method public rX()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/adview/u;->aie:I

    return v0
.end method

.method public rY()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/adview/u;->aif:I

    return v0
.end method

.method public rZ()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/adview/u;->aig:I

    return v0
.end method

.method public sa()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/adview/u;->aih:Z

    return v0
.end method

.method public sb()J
    .registers 3

    iget v0, p0, Lcom/applovin/impl/adview/u;->aii:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public sc()J
    .registers 3

    iget v0, p0, Lcom/applovin/impl/adview/u;->aij:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public sd()J
    .registers 3

    iget v0, p0, Lcom/applovin/impl/adview/u;->aik:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public se()F
    .registers 2

    iget v0, p0, Lcom/applovin/impl/adview/u;->ail:F

    return v0
.end method

.method public sf()F
    .registers 2

    iget v0, p0, Lcom/applovin/impl/adview/u;->aim:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoButtonProperties{widthPercentOfScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/adview/u;->aid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", heightPercentOfScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/adview/u;->aie:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", margin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/adview/u;->aif:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gravity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/adview/u;->aig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tapToFade="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applovin/impl/adview/u;->aih:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tapToFadeDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/adview/u;->aii:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fadeInDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/adview/u;->aij:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fadeOutDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/adview/u;->aik:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fadeInDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/adview/u;->ail:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fadeOutDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/adview/u;->aim:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
