###### Class com.applovin.impl.mediation.b.g (com.applovin.impl.mediation.b.g)
.class public Lcom/applovin/impl/mediation/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/b/g$a;
    }
.end annotation


# instance fields
.field private final auF:Lcom/applovin/impl/mediation/b/h;

.field private final auG:Ljava/lang/String;

.field private final auH:Ljava/lang/String;

.field private final auI:Ljava/lang/String;

.field private final auJ:Ljava/lang/String;

.field private final auK:J


# direct methods
.method private constructor <init>(Lcom/applovin/impl/mediation/b/h;Lcom/applovin/impl/mediation/g;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/g;->auF:Lcom/applovin/impl/mediation/b/h;

    iput-object p3, p0, Lcom/applovin/impl/mediation/b/g;->auI:Ljava/lang/String;

    iput-object p4, p0, Lcom/applovin/impl/mediation/b/g;->auJ:Ljava/lang/String;

    iput-wide p5, p0, Lcom/applovin/impl/mediation/b/g;->auK:J

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/g;->getSdkVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/g;->auG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/g;->getAdapterVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/g;->auH:Ljava/lang/String;

    goto :goto_1f

    :cond_1a
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/g;->auG:Ljava/lang/String;

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/g;->auH:Ljava/lang/String;

    :goto_1f
    return-void
.end method

.method public static a(Lcom/applovin/impl/mediation/b/h;Lcom/applovin/impl/mediation/g;Ljava/lang/String;J)Lcom/applovin/impl/mediation/b/g;
    .registers 13

    if-eqz p0, :cond_18

    if-eqz p1, :cond_10

    new-instance v7, Lcom/applovin/impl/mediation/b/g;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/mediation/b/g;-><init>(Lcom/applovin/impl/mediation/b/h;Lcom/applovin/impl/mediation/g;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v7

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No adapterWrapper specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No spec specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/applovin/impl/mediation/b/h;Ljava/lang/String;)Lcom/applovin/impl/mediation/b/g;
    .registers 5

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-static {p0, v0, p1, v1, v2}, Lcom/applovin/impl/mediation/b/g;->b(Lcom/applovin/impl/mediation/b/h;Lcom/applovin/impl/mediation/g;Ljava/lang/String;J)Lcom/applovin/impl/mediation/b/g;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/applovin/impl/mediation/b/h;Lcom/applovin/impl/mediation/g;Ljava/lang/String;J)Lcom/applovin/impl/mediation/b/g;
    .registers 13

    if-eqz p0, :cond_e

    new-instance v7, Lcom/applovin/impl/mediation/b/g;

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/mediation/b/g;-><init>(Lcom/applovin/impl/mediation/b/h;Lcom/applovin/impl/mediation/g;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v7

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No spec specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAdapterVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/g;->auH:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/g;->auJ:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/g;->auG:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalCollectionResult{mSignalProviderSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/g;->auF:Lcom/applovin/impl/mediation/b/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSdkVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/g;->auG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mAdapterVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/g;->auH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSignalDataLength=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/g;->auI:Ljava/lang/String;

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_3a

    :cond_39
    const/4 v2, 0x0

    :goto_3a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mErrorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/g;->auJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public yH()Lcom/applovin/impl/mediation/b/h;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/g;->auF:Lcom/applovin/impl/mediation/b/h;

    return-object v0
.end method

.method public yI()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/g;->auI:Ljava/lang/String;

    return-object v0
.end method

.method public yJ()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/impl/mediation/b/g;->auK:J

    return-wide v0
.end method
