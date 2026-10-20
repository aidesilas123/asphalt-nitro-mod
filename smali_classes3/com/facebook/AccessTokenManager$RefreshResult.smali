###### Class com.facebook.AccessTokenManager.RefreshResult (com.facebook.AccessTokenManager$RefreshResult)
.class final Lcom/facebook/AccessTokenManager$RefreshResult;
.super Ljava/lang/Object;
.source "AccessTokenManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RefreshResult"
.end annotation


# instance fields
.field private accessToken:Ljava/lang/String;

.field private dataAccessExpirationTime:Ljava/lang/Long;

.field private expiresAt:I

.field private expiresIn:I

.field private graphDomain:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAccessToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/AccessTokenManager$RefreshResult;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataAccessExpirationTime()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/facebook/AccessTokenManager$RefreshResult;->dataAccessExpirationTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final getExpiresAt()I
    .registers 2

    iget v0, p0, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresAt:I

    return v0
.end method

.method public final getExpiresIn()I
    .registers 2

    iget v0, p0, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresIn:I

    return v0
.end method

.method public final getGraphDomain()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/AccessTokenManager$RefreshResult;->graphDomain:Ljava/lang/String;

    return-object v0
.end method

.method public final setAccessToken(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/AccessTokenManager$RefreshResult;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public final setDataAccessExpirationTime(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/AccessTokenManager$RefreshResult;->dataAccessExpirationTime:Ljava/lang/Long;

    return-void
.end method

.method public final setExpiresAt(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresAt:I

    return-void
.end method

.method public final setExpiresIn(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresIn:I

    return-void
.end method

.method public final setGraphDomain(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/AccessTokenManager$RefreshResult;->graphDomain:Ljava/lang/String;

    return-void
.end method
