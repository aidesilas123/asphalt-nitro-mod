###### Class io.didomi.drawable.C1712a5.i (io.didomi.sdk.a5$i)
.class final Lio/didomi/sdk/a5$i;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/a5;-><init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/Z;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/G8;Lio/didomi/sdk/P8;Lio/didomi/sdk/D8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;Lio/didomi/sdk/I3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        "Lio/didomi/sdk/models/InternalPurpose;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        "it",
        "Lio/didomi/sdk/models/InternalPurpose;",
        "a",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/a5;


# direct methods
.method constructor <init>(Lio/didomi/sdk/a5;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/a5$i;->a:Lio/didomi/sdk/a5;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/a5$i;->a:Lio/didomi/sdk/a5;

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getPurposeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/didomi/sdk/a5;->b(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5$i;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object p1

    return-object p1
.end method
