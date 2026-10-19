###### Class io.didomi.sdk.models.DeviceStorageDisclosures.b (io.didomi.sdk.models.DeviceStorageDisclosures$b)
.class final Lio/didomi/sdk/models/DeviceStorageDisclosures$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/models/DeviceStorageDisclosures;->getDisclosuresList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Lio/didomi/sdk/models/DeviceStorageDisclosure;",
        "Ljava/lang/Comparable<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000f\n\u0002\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lio/didomi/sdk/models/DeviceStorageDisclosure;",
        "it",
        "",
        "a",
        "(Lio/didomi/sdk/models/DeviceStorageDisclosure;)Ljava/lang/Comparable;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lio/didomi/sdk/models/DeviceStorageDisclosures$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/models/DeviceStorageDisclosures$b;

    invoke-direct {v0}, Lio/didomi/sdk/models/DeviceStorageDisclosures$b;-><init>()V

    sput-object v0, Lio/didomi/sdk/models/DeviceStorageDisclosures$b;->a:Lio/didomi/sdk/models/DeviceStorageDisclosures$b;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/models/DeviceStorageDisclosure;)Ljava/lang/Comparable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/models/DeviceStorageDisclosure;",
            ")",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/DeviceStorageDisclosure;->getType()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lio/didomi/sdk/models/DeviceStorageDisclosure;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/models/DeviceStorageDisclosures$b;->a(Lio/didomi/sdk/models/DeviceStorageDisclosure;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
