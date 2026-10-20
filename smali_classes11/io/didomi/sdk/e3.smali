###### Class io.didomi.drawable.C1750e3 (io.didomi.sdk.e3)
.class public final Lio/didomi/sdk/e3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0019\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0006*\u00020\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lio/didomi/sdk/d3;",
        "Lio/didomi/sdk/u5;",
        "sdkConfiguration",
        "",
        "a",
        "(Lio/didomi/sdk/d3;Lio/didomi/sdk/u5;)V",
        "Ljava/util/Date;",
        "(Lio/didomi/sdk/d3;)Ljava/util/Date;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Lio/didomi/sdk/d3;)Ljava/util/Date;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lio/didomi/sdk/d3;->getLastUpdated()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :try_start_15
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_19
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_19} :catch_1a

    goto :goto_33

    :catch_1a
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lio/didomi/sdk/d3;->getLastUpdated()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lio/didomi/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_33
    :goto_33
    return-object v1
.end method

.method public static final a(Lio/didomi/sdk/d3;Lio/didomi/sdk/u5;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lio/didomi/sdk/d3;->a(I)V

    invoke-interface {p0}, Lio/didomi/sdk/d3;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/models/InternalVendor;

    const-string v2, "iab"

    invoke-virtual {v1, v2}, Lio/didomi/sdk/models/InternalVendor;->setNamespace(Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->getPurposeIds()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lio/didomi/sdk/v5;->a(Lio/didomi/sdk/u5;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/didomi/sdk/models/InternalVendor;->setPurposeIds(Ljava/util/List;)V

    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->getLegIntPurposeIds()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lio/didomi/sdk/v5;->a(Lio/didomi/sdk/u5;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/didomi/sdk/models/InternalVendor;->setLegIntPurposeIds(Ljava/util/List;)V

    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->getFlexiblePurposeIds()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lio/didomi/sdk/v5;->a(Lio/didomi/sdk/u5;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/didomi/sdk/models/InternalVendor;->setFlexiblePurposeIds(Ljava/util/List;)V

    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0}, Lio/didomi/sdk/d3;->f()I

    move-result v2

    if-le v1, v2, :cond_1a

    invoke-interface {p0, v1}, Lio/didomi/sdk/d3;->a(I)V

    goto :goto_1a

    :cond_5e
    return-void
.end method
