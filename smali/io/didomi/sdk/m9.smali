###### Class io.didomi.drawable.m9 (io.didomi.sdk.m9)
.class public final Lio/didomi/sdk/m9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J3\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ)\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000cJ\u001d\u0010\n\u001a\u00020\u000f2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\rH\u0000\u00a2\u0006\u0004\u0008\n\u0010\u0010J+\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006H\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/didomi/sdk/m9;",
        "",
        "<init>",
        "()V",
        "Lio/didomi/sdk/consent/model/ConsentToken;",
        "consentToken",
        "",
        "appId",
        "userId",
        "extra",
        "a",
        "(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        "(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        "",
        "strings",
        "Lcom/google/gson/JsonArray;",
        "(Ljava/util/Set;)Lcom/google/gson/JsonArray;",
        "b",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lio/didomi/sdk/m9;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/m9;

    invoke-direct {v0}, Lio/didomi/sdk/m9;-><init>()V

    sput-object v0, Lio/didomi/sdk/m9;->a:Lio/didomi/sdk/m9;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Lcom/google/gson/d;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/gson/d;"
        }
    .end annotation

    const-string v0, "strings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "^[0-9]{1,5}$"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lkotlin/text/Regex;->e(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    :try_start_27
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/d;->o(Ljava/lang/Number;)V
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_32} :catch_33

    goto :goto_e

    :catch_33
    move-exception v2

    const-string v3, "Invalid vendor id"

    invoke-static {v3, v2}, Lio/didomi/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_39
    invoke-virtual {v0, v1}, Lcom/google/gson/d;->r(Ljava/lang/String;)V

    goto :goto_e

    :cond_3d
    return-object v0
.end method

.method public final a(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "didomiConfig.user.externalConsent.value="

    const-string v1, "consentToken"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lio/didomi/sdk/m9;->b(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "utf-8"

    invoke-static {p1, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_20} :catch_21

    goto :goto_36

    :catch_21
    move-exception p2

    const-string p3, "Unable to URL-encode consent"

    invoke-static {p3, p2}, Lio/didomi/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_36
    return-object p1
.end method

.method public final a(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "consentToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.didomiOnReady = window.didomiOnReady || [];"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "window.didomiOnReady.push(function (Didomi) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Didomi.notice.hide();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Didomi.setUserStatus("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/didomi/sdk/m9;->a:Lio/didomi/sdk/m9;

    invoke-virtual {v1, p1, p2, p3}, Lio/didomi/sdk/m9;->b(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_39

    invoke-static {p4}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    if-ne p1, p2, :cond_39

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    const-string p1, "});"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StringBuilder()\n        \u2026);\")\n        }.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 20

    move-object/from16 v0, p0

    const-string v1, "consentToken"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    invoke-virtual {v1}, Lio/didomi/sdk/v0;->c()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v15, Lio/didomi/sdk/d5;

    invoke-static/range {p1 .. p1}, Lio/didomi/sdk/Y;->h(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/didomi/sdk/m9;->a(Ljava/util/Set;)Lcom/google/gson/d;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lio/didomi/sdk/Y;->d(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/didomi/sdk/m9;->a(Ljava/util/Set;)Lcom/google/gson/d;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lio/didomi/sdk/Y;->f(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/didomi/sdk/m9;->a(Ljava/util/Set;)Lcom/google/gson/d;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lio/didomi/sdk/Y;->b(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v0, v6}, Lio/didomi/sdk/m9;->a(Ljava/util/Set;)Lcom/google/gson/d;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lio/didomi/sdk/Y;->i(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v0, v7}, Lio/didomi/sdk/m9;->a(Ljava/util/Set;)Lcom/google/gson/d;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lio/didomi/sdk/Y;->e(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v0, v8}, Lio/didomi/sdk/m9;->a(Ljava/util/Set;)Lcom/google/gson/d;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lio/didomi/sdk/Y;->g(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v0, v9}, Lio/didomi/sdk/m9;->a(Ljava/util/Set;)Lcom/google/gson/d;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lio/didomi/sdk/Y;->c(Lio/didomi/sdk/consent/model/ConsentToken;)Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v0, v10}, Lio/didomi/sdk/m9;->a(Ljava/util/Set;)Lcom/google/gson/d;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/consent/model/ConsentToken;->getCreated()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    const-string v11, "df.format(consentToken.created)"

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/consent/model/ConsentToken;->getUpdated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    const-string v1, "df.format(consentToken.updated)"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v15

    move-object/from16 v11, p3

    move-object/from16 v14, p2

    invoke-direct/range {v2 .. v14}, Lio/didomi/sdk/d5;-><init>(Lcom/google/gson/d;Lcom/google/gson/d;Lcom/google/gson/d;Lcom/google/gson/d;Lcom/google/gson/d;Lcom/google/gson/d;Lcom/google/gson/d;Lcom/google/gson/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_73
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v15}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{\n            Gson().toJson(queryString)\n        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_81} :catch_82

    return-object v1

    :catch_82
    const-string v1, ""

    return-object v1
.end method
