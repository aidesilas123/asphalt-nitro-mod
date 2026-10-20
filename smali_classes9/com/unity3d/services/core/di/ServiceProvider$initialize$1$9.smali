###### Class com.unity3d.services.core.di.ServiceProvider.AnonymousClass1.AnonymousClass9 (com.unity3d.services.core.di.ServiceProvider$initialize$1$9)
.class final Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$9;
.super Lkotlin/jvm/internal/t;
.source "ServiceProvider.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/di/ServiceProvider$initialize$1;->invoke(Lcom/unity3d/services/core/di/ServicesRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Landroidx/datastore/core/DataMigration<",
        "LByteStringStoreOuterClass$ByteStringStore;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/datastore/core/DataMigration;",
        "LByteStringStoreOuterClass$ByteStringStore;",
        "invoke"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$9;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$9;

    invoke-direct {v0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$9;-><init>()V

    sput-object v0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$9;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$9;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/datastore/core/DataMigration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/core/DataMigration<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/unity3d/services/core/di/ServiceProvider;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider;

    invoke-static {v0}, Lcom/unity3d/services/core/di/ServiceProvider;->access$provideDefaultDataMigration(Lcom/unity3d/services/core/di/ServiceProvider;)Landroidx/datastore/core/DataMigration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$9;->invoke()Landroidx/datastore/core/DataMigration;

    move-result-object v0

    return-object v0
.end method
