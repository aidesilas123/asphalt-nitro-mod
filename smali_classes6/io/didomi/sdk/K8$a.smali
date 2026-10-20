###### Class io.didomi.sdk.K8.a (io.didomi.sdk.K8$a)
.class final Lio/didomi/sdk/K8$a;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/K8;-><init>(Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/Z;Lio/didomi/sdk/v3;Lio/didomi/sdk/M8;Lio/didomi/sdk/C3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/String;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/V;

.field final synthetic b:Lio/didomi/sdk/K8;


# direct methods
.method constructor <init>(Lio/didomi/sdk/V;Lio/didomi/sdk/K8;)V
    .registers 3

    iput-object p1, p0, Lio/didomi/sdk/K8$a;->a:Lio/didomi/sdk/V;

    iput-object p2, p0, Lio/didomi/sdk/K8$a;->b:Lio/didomi/sdk/K8;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 11

    iget-object v0, p0, Lio/didomi/sdk/K8$a;->a:Lio/didomi/sdk/V;

    invoke-virtual {v0}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/X;->a(Lio/didomi/sdk/consent/model/ConsentToken;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "consentRepository.consentToken.toJSON().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/b;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/didomi/sdk/K8$a;->b:Lio/didomi/sdk/K8;

    invoke-static {v2}, Lio/didomi/sdk/K8;->a(Lio/didomi/sdk/K8;)Lio/didomi/sdk/v3;

    move-result-object v3

    const-string v4, "user_information_token"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/K8$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
