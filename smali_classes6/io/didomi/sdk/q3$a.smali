###### Class io.didomi.drawable.C1870q3.a (io.didomi.sdk.q3$a)
.class final Lio/didomi/sdk/q3$a;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/q3;->a(Lio/didomi/sdk/models/InternalVendor;[Ljava/lang/String;)Lio/didomi/sdk/Vendor$Url;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/String;",
        "Lio/didomi/sdk/Vendor$Url;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "language",
        "Lio/didomi/sdk/Vendor$Url;",
        "a",
        "(Ljava/lang/String;)Lio/didomi/sdk/Vendor$Url;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/models/InternalVendor;


# direct methods
.method constructor <init>(Lio/didomi/sdk/models/InternalVendor;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/q3$a;->a:Lio/didomi/sdk/models/InternalVendor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lio/didomi/sdk/Vendor$Url;
    .registers 6

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/q3$a;->a:Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalVendor;->getUrls()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/didomi/sdk/Vendor$Url;

    invoke-virtual {v3}, Lio/didomi/sdk/Vendor$Url;->getLangId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object v1, v2

    :cond_2a
    check-cast v1, Lio/didomi/sdk/Vendor$Url;

    :cond_2c
    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/q3$a;->a(Ljava/lang/String;)Lio/didomi/sdk/Vendor$Url;

    move-result-object p1

    return-object p1
.end method
