###### Class com.applovin.impl.sdk.network.c (com.applovin.impl.sdk.network.c)
.class public Lcom/applovin/impl/sdk/network/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/network/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private aHC:Ljava/lang/String;

.field private aHD:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aHE:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private aHF:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final aHG:I

.field private aHH:I

.field private final aHI:I

.field private final aHJ:I

.field private final aHK:Z

.field private final aHL:Z

.field private final aHM:Z

.field private final aHN:Z

.field private final aHO:Lcom/applovin/impl/sdk/utils/p$a;

.field private final aHP:Z

.field private final aHQ:Z

.field private aHr:Ljava/lang/String;

.field private final aHt:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private awy:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/applovin/impl/sdk/network/c$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/network/c$a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/applovin/impl/sdk/network/c$a;->aHr:Ljava/lang/String;

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/c;->aHr:Ljava/lang/String;

    iget-object v0, p1, Lcom/applovin/impl/sdk/network/c$a;->aHC:Ljava/lang/String;

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/c;->aHC:Ljava/lang/String;

    iget-object v0, p1, Lcom/applovin/impl/sdk/network/c$a;->aHD:Ljava/util/Map;

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/c;->aHD:Ljava/util/Map;

    iget-object v0, p1, Lcom/applovin/impl/sdk/network/c$a;->awy:Ljava/util/Map;

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/c;->awy:Ljava/util/Map;

    iget-object v0, p1, Lcom/applovin/impl/sdk/network/c$a;->aHE:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/c;->aHE:Lorg/json/JSONObject;

    iget-object v0, p1, Lcom/applovin/impl/sdk/network/c$a;->aHF:Ljava/lang/String;

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/c;->aHF:Ljava/lang/String;

    iget-object v0, p1, Lcom/applovin/impl/sdk/network/c$a;->aHt:Ljava/lang/Object;

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/c;->aHt:Ljava/lang/Object;

    iget v0, p1, Lcom/applovin/impl/sdk/network/c$a;->aHH:I

    iput v0, p0, Lcom/applovin/impl/sdk/network/c;->aHG:I

    iput v0, p0, Lcom/applovin/impl/sdk/network/c;->aHH:I

    iget v0, p1, Lcom/applovin/impl/sdk/network/c$a;->aHI:I

    iput v0, p0, Lcom/applovin/impl/sdk/network/c;->aHI:I

    iget v0, p1, Lcom/applovin/impl/sdk/network/c$a;->aHJ:I

    iput v0, p0, Lcom/applovin/impl/sdk/network/c;->aHJ:I

    iget-boolean v0, p1, Lcom/applovin/impl/sdk/network/c$a;->aHK:Z

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/network/c;->aHK:Z

    iget-boolean v0, p1, Lcom/applovin/impl/sdk/network/c$a;->aHL:Z

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/network/c;->aHL:Z

    iget-boolean v0, p1, Lcom/applovin/impl/sdk/network/c$a;->aHM:Z

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/network/c;->aHM:Z

    iget-boolean v0, p1, Lcom/applovin/impl/sdk/network/c$a;->aHN:Z

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/network/c;->aHN:Z

    iget-object v0, p1, Lcom/applovin/impl/sdk/network/c$a;->aHO:Lcom/applovin/impl/sdk/utils/p$a;

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/c;->aHO:Lcom/applovin/impl/sdk/utils/p$a;

    iget-boolean v0, p1, Lcom/applovin/impl/sdk/network/c$a;->aHP:Z

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/network/c;->aHP:Z

    iget-boolean p1, p1, Lcom/applovin/impl/sdk/network/c$a;->aHQ:Z

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/network/c;->aHQ:Z

    return-void
.end method

.method public static D(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/network/c$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/n;",
            ")",
            "Lcom/applovin/impl/sdk/network/c$a<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/applovin/impl/sdk/network/c$a;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/network/c$a;-><init>(Lcom/applovin/impl/sdk/n;)V

    return-object v0
.end method


# virtual methods
.method public HQ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/c;->aHC:Ljava/lang/String;

    return-object v0
.end method

.method public HR()Ljava/util/Map;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/c;->aHD:Ljava/util/Map;

    return-object v0
.end method

.method public HS()Ljava/util/Map;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/c;->awy:Ljava/util/Map;

    return-object v0
.end method

.method public HT()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/c;->aHF:Ljava/lang/String;

    return-object v0
.end method

.method public HU()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/c;->aHt:Ljava/lang/Object;

    return-object v0
.end method

.method public HV()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/sdk/network/c;->aHH:I

    return v0
.end method

.method public HW()I
    .registers 3

    iget v0, p0, Lcom/applovin/impl/sdk/network/c;->aHG:I

    iget v1, p0, Lcom/applovin/impl/sdk/network/c;->aHH:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public HX()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/sdk/network/c;->aHI:I

    return v0
.end method

.method public HY()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/sdk/network/c;->aHJ:I

    return v0
.end method

.method public HZ()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/network/c;->aHK:Z

    return v0
.end method

.method public Ia()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/network/c;->aHL:Z

    return v0
.end method

.method public Ib()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/network/c;->aHM:Z

    return v0
.end method

.method public Ic()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/network/c;->aHN:Z

    return v0
.end method

.method public Id()Lcom/applovin/impl/sdk/utils/p$a;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/c;->aHO:Lcom/applovin/impl/sdk/utils/p$a;

    return-object v0
.end method

.method public Ie()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/network/c;->aHP:Z

    return v0
.end method

.method public If()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/network/c;->aHQ:Z

    return v0
.end method

.method public cU(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/c;->aHr:Ljava/lang/String;

    return-void
.end method

.method public cV(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/c;->aHC:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/applovin/impl/sdk/network/c;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/applovin/impl/sdk/network/c;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->aHr:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v3, p1, Lcom/applovin/impl/sdk/network/c;->aHr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_1d

    :cond_19
    iget-object v1, p1, Lcom/applovin/impl/sdk/network/c;->aHr:Ljava/lang/String;

    if-eqz v1, :cond_1e

    :goto_1d
    return v2

    :cond_1e
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->aHD:Ljava/util/Map;

    if-eqz v1, :cond_2b

    iget-object v3, p1, Lcom/applovin/impl/sdk/network/c;->aHD:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_2f

    :cond_2b
    iget-object v1, p1, Lcom/applovin/impl/sdk/network/c;->aHD:Ljava/util/Map;

    if-eqz v1, :cond_30

    :goto_2f
    return v2

    :cond_30
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->awy:Ljava/util/Map;

    if-eqz v1, :cond_3d

    iget-object v3, p1, Lcom/applovin/impl/sdk/network/c;->awy:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    goto :goto_41

    :cond_3d
    iget-object v1, p1, Lcom/applovin/impl/sdk/network/c;->awy:Ljava/util/Map;

    if-eqz v1, :cond_42

    :goto_41
    return v2

    :cond_42
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->aHF:Ljava/lang/String;

    if-eqz v1, :cond_4f

    iget-object v3, p1, Lcom/applovin/impl/sdk/network/c;->aHF:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    goto :goto_53

    :cond_4f
    iget-object v1, p1, Lcom/applovin/impl/sdk/network/c;->aHF:Ljava/lang/String;

    if-eqz v1, :cond_54

    :goto_53
    return v2

    :cond_54
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->aHC:Ljava/lang/String;

    if-eqz v1, :cond_61

    iget-object v3, p1, Lcom/applovin/impl/sdk/network/c;->aHC:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    goto :goto_65

    :cond_61
    iget-object v1, p1, Lcom/applovin/impl/sdk/network/c;->aHC:Ljava/lang/String;

    if-eqz v1, :cond_66

    :goto_65
    return v2

    :cond_66
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->aHE:Lorg/json/JSONObject;

    if-eqz v1, :cond_73

    iget-object v3, p1, Lcom/applovin/impl/sdk/network/c;->aHE:Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    goto :goto_77

    :cond_73
    iget-object v1, p1, Lcom/applovin/impl/sdk/network/c;->aHE:Lorg/json/JSONObject;

    if-eqz v1, :cond_78

    :goto_77
    return v2

    :cond_78
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->aHt:Ljava/lang/Object;

    if-eqz v1, :cond_85

    iget-object v3, p1, Lcom/applovin/impl/sdk/network/c;->aHt:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    goto :goto_89

    :cond_85
    iget-object v1, p1, Lcom/applovin/impl/sdk/network/c;->aHt:Ljava/lang/Object;

    if-eqz v1, :cond_8a

    :goto_89
    return v2

    :cond_8a
    iget v1, p0, Lcom/applovin/impl/sdk/network/c;->aHG:I

    iget v3, p1, Lcom/applovin/impl/sdk/network/c;->aHG:I

    if-eq v1, v3, :cond_91

    return v2

    :cond_91
    iget v1, p0, Lcom/applovin/impl/sdk/network/c;->aHH:I

    iget v3, p1, Lcom/applovin/impl/sdk/network/c;->aHH:I

    if-eq v1, v3, :cond_98

    return v2

    :cond_98
    iget v1, p0, Lcom/applovin/impl/sdk/network/c;->aHI:I

    iget v3, p1, Lcom/applovin/impl/sdk/network/c;->aHI:I

    if-eq v1, v3, :cond_9f

    return v2

    :cond_9f
    iget v1, p0, Lcom/applovin/impl/sdk/network/c;->aHJ:I

    iget v3, p1, Lcom/applovin/impl/sdk/network/c;->aHJ:I

    if-eq v1, v3, :cond_a6

    return v2

    :cond_a6
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/c;->aHK:Z

    iget-boolean v3, p1, Lcom/applovin/impl/sdk/network/c;->aHK:Z

    if-eq v1, v3, :cond_ad

    return v2

    :cond_ad
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/c;->aHL:Z

    iget-boolean v3, p1, Lcom/applovin/impl/sdk/network/c;->aHL:Z

    if-eq v1, v3, :cond_b4

    return v2

    :cond_b4
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/c;->aHM:Z

    iget-boolean v3, p1, Lcom/applovin/impl/sdk/network/c;->aHM:Z

    if-eq v1, v3, :cond_bb

    return v2

    :cond_bb
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/c;->aHN:Z

    iget-boolean v3, p1, Lcom/applovin/impl/sdk/network/c;->aHN:Z

    if-eq v1, v3, :cond_c2

    return v2

    :cond_c2
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->aHO:Lcom/applovin/impl/sdk/utils/p$a;

    iget-object v3, p1, Lcom/applovin/impl/sdk/network/c;->aHO:Lcom/applovin/impl/sdk/utils/p$a;

    if-eq v1, v3, :cond_c9

    return v2

    :cond_c9
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/c;->aHP:Z

    iget-boolean v3, p1, Lcom/applovin/impl/sdk/network/c;->aHP:Z

    if-eq v1, v3, :cond_d0

    return v2

    :cond_d0
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/c;->aHQ:Z

    iget-boolean p1, p1, Lcom/applovin/impl/sdk/network/c;->aHQ:Z

    if-eq v1, p1, :cond_d7

    return v2

    :cond_d7
    return v0
.end method

.method public gD(I)V
    .registers 2

    iput p1, p0, Lcom/applovin/impl/sdk/network/c;->aHH:I

    return-void
.end method

.method public hashCode()I
    .registers 4

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->aHr:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->aHF:Ljava/lang/String;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->aHC:Ljava/lang/String;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->aHt:Ljava/lang/Object;

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_36
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/impl/sdk/network/c;->aHG:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/impl/sdk/network/c;->aHH:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/impl/sdk/network/c;->aHI:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/impl/sdk/network/c;->aHJ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/c;->aHK:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/c;->aHL:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/c;->aHM:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/c;->aHN:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->aHO:Lcom/applovin/impl/sdk/utils/p$a;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/p$a;->getValue()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/c;->aHP:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/c;->aHQ:Z

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->aHD:Ljava/util/Map;

    if-eqz v1, :cond_7d

    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7d
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->awy:Ljava/util/Map;

    if-eqz v1, :cond_88

    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_88
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->aHE:Lorg/json/JSONObject;

    if-eqz v1, :cond_a3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpRequest {endpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->aHr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backupEndpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->aHF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", httpMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->aHC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", httpHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->awy:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->aHE:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", emptyResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->aHt:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initialRetryAttempts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/sdk/network/c;->aHG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryAttemptsLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/sdk/network/c;->aHH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/sdk/network/c;->aHI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/sdk/network/c;->aHJ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exponentialRetries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/c;->aHK:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", retryOnAllErrors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/c;->aHL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", retryOnNoConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/c;->aHM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", encodingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/c;->aHN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", encodingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/c;->aHO:Lcom/applovin/impl/sdk/utils/p$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackConnectionSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/c;->aHP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", gzipBodyEncoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/network/c;->aHQ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vS()Lorg/json/JSONObject;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/c;->aHE:Lorg/json/JSONObject;

    return-object v0
.end method

.method public zL()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/c;->aHr:Ljava/lang/String;

    return-object v0
.end method
