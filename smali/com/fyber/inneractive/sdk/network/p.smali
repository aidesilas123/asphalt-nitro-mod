###### Class com.fyber.inneractive.sdk.network.p (com.fyber.inneractive.sdk.network.p)
.class public Lcom/fyber/inneractive/sdk/network/p;
.super Lcom/fyber/inneractive/sdk/network/k;
.source "SourceFile"


# instance fields
.field public final e:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

.field public final f:Lcom/fyber/inneractive/sdk/network/d0;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Ljava/lang/String;Lcom/fyber/inneractive/sdk/config/global/s;Lcom/fyber/inneractive/sdk/network/k$a;)V
    .registers 5

    invoke-direct {p0, p3, p2, p4}, Lcom/fyber/inneractive/sdk/network/k;-><init>(Lcom/fyber/inneractive/sdk/config/global/s;Ljava/lang/String;Lcom/fyber/inneractive/sdk/network/k$a;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/p;->e:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    new-instance p2, Lcom/fyber/inneractive/sdk/network/d0;

    new-instance p4, Lcom/fyber/inneractive/sdk/network/p$a;

    invoke-direct {p4, p0}, Lcom/fyber/inneractive/sdk/network/p$a;-><init>(Lcom/fyber/inneractive/sdk/network/p;)V

    invoke-direct {p2, p4, p1, p3}, Lcom/fyber/inneractive/sdk/network/d0;-><init>(Lcom/fyber/inneractive/sdk/network/w;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/config/global/s;)V

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/network/p;->f:Lcom/fyber/inneractive/sdk/network/d0;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/network/p;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-super {p0}, Lcom/fyber/inneractive/sdk/network/k;->a()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/p;->f:Lcom/fyber/inneractive/sdk/network/d0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/network/f0;->a:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/p;->f:Lcom/fyber/inneractive/sdk/network/d0;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/network/d0;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/p;->f:Lcom/fyber/inneractive/sdk/network/d0;

    new-instance v1, Lcom/fyber/inneractive/sdk/network/p$b;

    invoke-direct {v1, p0}, Lcom/fyber/inneractive/sdk/network/p$b;-><init>(Lcom/fyber/inneractive/sdk/network/p;)V

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/network/f0;->d:Lcom/fyber/inneractive/sdk/network/c0$a;

    return-void
.end method

.method public d()Z
    .registers 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/network/k;->b:Z

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IARemoteAdFetcher: requestAd called"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/p;->e:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;->getSpotId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "appID is null or empty. Please provide a valid appID and re-try."

    invoke-static {v3, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_30

    :cond_21
    const-string v1, "android.permission.INTERNET"

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/util/l;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "INTERNET permission is missing. Please add it to the Manifest and re-try, otherwise ads will not be requested and displayed! "

    invoke-static {v3, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_30
    const/4 v1, 0x0

    goto :goto_51

    :cond_32
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/util/l;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_41

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "It is recommended to add ACCESS_NETWORK_STATE permission to the Manifest for better targetting"

    invoke-static {v3, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_41
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/util/l;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_50

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "It is recomended to add the READ_PHONE_STATE permission to the manifest for better targetting"

    invoke-static {v3, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_50
    const/4 v1, 0x1

    :goto_51
    if-nez v1, :cond_74

    new-instance v1, Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;

    sget-object v2, Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;->INVALID_INPUT:Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;

    sget-object v3, Lcom/fyber/inneractive/sdk/flow/g;->VALIDATE_PARAMS_FAILED:Lcom/fyber/inneractive/sdk/flow/g;

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "appID is null or empty or INTERNET permission is missing"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;-><init>(Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;Lcom/fyber/inneractive/sdk/flow/g;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/network/p;->e:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/fyber/inneractive/sdk/network/k;->b:Z

    if-nez v4, :cond_73

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/network/k;->a:Lcom/fyber/inneractive/sdk/network/k$a;

    if-eqz v4, :cond_73

    check-cast v4, Lcom/fyber/inneractive/sdk/flow/k;

    invoke-virtual {v4, v2, v3, v1}, Lcom/fyber/inneractive/sdk/flow/k;->b(Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;)V

    :cond_73
    return v0

    :cond_74
    sget-object v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->s:Lcom/fyber/inneractive/sdk/network/y;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/p;->f:Lcom/fyber/inneractive/sdk/network/d0;

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/network/y;->b(Lcom/fyber/inneractive/sdk/network/c0;)V

    return v2
.end method

###### Class com.fyber.inneractive.sdk.network.p.a (com.fyber.inneractive.sdk.network.p$a)
.class public Lcom/fyber/inneractive/sdk/network/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/network/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/network/p;-><init>(Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Ljava/lang/String;Lcom/fyber/inneractive/sdk/config/global/s;Lcom/fyber/inneractive/sdk/network/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fyber/inneractive/sdk/network/w<",
        "Lcom/fyber/inneractive/sdk/response/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/network/p;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/network/p;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/p$a;->a:Lcom/fyber/inneractive/sdk/network/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .registers 7

    check-cast p1, Lcom/fyber/inneractive/sdk/response/e;

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/network/p$a;->a:Lcom/fyber/inneractive/sdk/network/p;

    iget-object p3, p2, Lcom/fyber/inneractive/sdk/network/p;->e:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    invoke-virtual {p2, p3, p1}, Lcom/fyber/inneractive/sdk/network/k;->a(Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;)V

    goto :goto_56

    :cond_c
    iget-object p3, p0, Lcom/fyber/inneractive/sdk/network/p$a;->a:Lcom/fyber/inneractive/sdk/network/p;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p3, p2, Lcom/fyber/inneractive/sdk/network/s0;

    if-eqz p3, :cond_24

    move-object p3, p2

    check-cast p3, Lcom/fyber/inneractive/sdk/network/s0;

    iget p3, p3, Lcom/fyber/inneractive/sdk/network/s0;->a:I

    const/16 v0, 0xcc

    if-ne p3, v0, :cond_21

    sget-object p3, Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;->NO_FILL:Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;

    goto :goto_34

    :cond_21
    sget-object p3, Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;->SERVER_INTERNAL_ERROR:Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;

    goto :goto_34

    :cond_24
    instance-of p3, p2, Ljava/io/FileNotFoundException;

    if-eqz p3, :cond_2b

    sget-object p3, Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;->CONNECTION_ERROR:Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;

    goto :goto_34

    :cond_2b
    instance-of p3, p2, Lcom/fyber/inneractive/sdk/network/a0;

    if-eqz p3, :cond_32

    sget-object p3, Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;->SERVER_INVALID_RESPONSE:Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;

    goto :goto_34

    :cond_32
    sget-object p3, Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;->CONNECTION_ERROR:Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;

    :goto_34
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/p$a;->a:Lcom/fyber/inneractive/sdk/network/p;

    new-instance v1, Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;

    sget-object v2, Lcom/fyber/inneractive/sdk/flow/g;->NETWORK_ERROR:Lcom/fyber/inneractive/sdk/flow/g;

    invoke-direct {v1, p3, v2, p2}, Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;-><init>(Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;Lcom/fyber/inneractive/sdk/flow/g;Ljava/lang/Throwable;)V

    iget-object p2, v0, Lcom/fyber/inneractive/sdk/network/p;->e:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    iget-object p3, v0, Lcom/fyber/inneractive/sdk/network/k;->a:Lcom/fyber/inneractive/sdk/network/k$a;

    if-nez p3, :cond_44

    goto :goto_56

    :cond_44
    iget-boolean p3, v0, Lcom/fyber/inneractive/sdk/network/k;->b:Z

    if-eqz p3, :cond_49

    goto :goto_56

    :cond_49
    iget-boolean p3, v0, Lcom/fyber/inneractive/sdk/network/k;->b:Z

    if-nez p3, :cond_56

    iget-object p3, v0, Lcom/fyber/inneractive/sdk/network/k;->a:Lcom/fyber/inneractive/sdk/network/k$a;

    if-eqz p3, :cond_56

    check-cast p3, Lcom/fyber/inneractive/sdk/flow/k;

    invoke-virtual {p3, p2, p1, v1}, Lcom/fyber/inneractive/sdk/flow/k;->b(Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;)V

    :cond_56
    :goto_56
    return-void
.end method

###### Class com.fyber.inneractive.sdk.network.p.b (com.fyber.inneractive.sdk.network.p$b)
.class public Lcom/fyber/inneractive/sdk/network/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/network/c0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/network/p;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/network/p;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/network/p;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/p$b;->a:Lcom/fyber/inneractive/sdk/network/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_5a

    goto :goto_2c

    :sswitch_c
    const-string v0, "sdkParsedResponse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_2c

    :cond_15
    const/4 v1, 0x2

    goto :goto_2c

    :sswitch_17
    const-string v0, "sdkGotServerResponse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_2c

    :cond_20
    const/4 v1, 0x1

    goto :goto_2c

    :sswitch_22
    const-string v0, "sdkInitNetworkRequest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    packed-switch v1, :pswitch_data_68

    goto :goto_59

    :pswitch_30
    sget-object p1, Lcom/fyber/inneractive/sdk/metrics/c;->d:Lcom/fyber/inneractive/sdk/metrics/c;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/p$b;->a:Lcom/fyber/inneractive/sdk/network/p;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/network/k;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/metrics/c;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/metrics/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/metrics/f;->d()Ljava/lang/Long;

    goto :goto_59

    :pswitch_3e
    sget-object p1, Lcom/fyber/inneractive/sdk/metrics/c;->d:Lcom/fyber/inneractive/sdk/metrics/c;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/p$b;->a:Lcom/fyber/inneractive/sdk/network/p;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/network/k;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/metrics/c;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/metrics/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/metrics/f;->g()Ljava/lang/Long;

    goto :goto_59

    :pswitch_4c
    sget-object p1, Lcom/fyber/inneractive/sdk/metrics/c;->d:Lcom/fyber/inneractive/sdk/metrics/c;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/p$b;->a:Lcom/fyber/inneractive/sdk/network/p;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/network/k;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/metrics/c;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/metrics/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/metrics/f;->f()Ljava/lang/Long;

    :goto_59
    return-void

    :sswitch_data_5a
    .sparse-switch
        -0x52fa4c75 -> :sswitch_22
        0x2c276b36 -> :sswitch_17
        0x6811ae4c -> :sswitch_c
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_3e
        :pswitch_30
    .end packed-switch
.end method
