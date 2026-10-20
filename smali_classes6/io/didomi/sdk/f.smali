###### Class io.didomi.drawable.C1756f (io.didomi.sdk.f)
.class public final Lio/didomi/sdk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a\u0017\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lio/didomi/sdk/e;",
        "",
        "a",
        "(Lio/didomi/sdk/e;)Z",
        "",
        "hex",
        "",
        "(Ljava/lang/String;)I",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method private static final a(Ljava/lang/String;)I
    .registers 2

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/text/a;->checkRadix(I)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final a(Lio/didomi/sdk/e;)Z
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lio/didomi/sdk/e;->getUser()Lio/didomi/sdk/apiEvents/User;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/apiEvents/User;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    :cond_11
    invoke-interface {p0}, Lio/didomi/sdk/e;->getRate()F

    move-result p0

    float-to-double v2, p0

    const/4 p0, 0x1

    :try_start_17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x24

    if-ne v4, v5, :cond_59

    const-string v4, "00000000-0000-0000-0000-000000000000"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-lez v6, :cond_59

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_34

    goto :goto_59

    :cond_34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "substring(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/didomi/sdk/f;->a(Ljava/lang/String;)I

    move-result v0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_47} :catch_53

    int-to-double v4, v0

    const-wide v6, 0x406fe00000000000L    # 255.0

    div-double/2addr v4, v6

    cmpl-double v0, v4, v2

    if-lez v0, :cond_5a

    goto :goto_59

    :catch_53
    move-exception v0

    const-string v1, "Error while checking user UUID in API event"

    invoke-static {v1, v0}, Lio/didomi/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_59
    :goto_59
    const/4 v1, 0x1

    :cond_5a
    return v1
.end method
