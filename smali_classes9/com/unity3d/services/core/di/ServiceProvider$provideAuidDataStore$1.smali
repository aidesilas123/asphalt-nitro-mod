###### Class com.unity3d.services.core.di.ServiceProvider.C16991 (com.unity3d.services.core.di.ServiceProvider$provideAuidDataStore$1)
.class final Lcom/unity3d/services/core/di/ServiceProvider$provideAuidDataStore$1;
.super Lkotlin/jvm/internal/t;
.source "ServiceProvider.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/di/ServiceProvider;->provideAuidDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroidx/datastore/core/DataMigration;)Landroidx/datastore/core/DataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Landroidx/datastore/core/CorruptionException;",
        "LByteStringStoreOuterClass$ByteStringStore;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "LByteStringStoreOuterClass$ByteStringStore;",
        "it",
        "Landroidx/datastore/core/CorruptionException;",
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
.field public static final INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$provideAuidDataStore$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unity3d/services/core/di/ServiceProvider$provideAuidDataStore$1;

    invoke-direct {v0}, Lcom/unity3d/services/core/di/ServiceProvider$provideAuidDataStore$1;-><init>()V

    sput-object v0, Lcom/unity3d/services/core/di/ServiceProvider$provideAuidDataStore$1;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$provideAuidDataStore$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/datastore/core/CorruptionException;)LByteStringStoreOuterClass$ByteStringStore;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, LByteStringStoreOuterClass$ByteStringStore;->newBuilder()LByteStringStoreOuterClass$ByteStringStore$a;

    move-result-object p1

    invoke-static {}, Lcom/google/protobuf/ByteString;->empty()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, LByteStringStoreOuterClass$ByteStringStore$a;->b(Lcom/google/protobuf/ByteString;)LByteStringStoreOuterClass$ByteStringStore$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    const-string v0, "newBuilder().setData(ByteString.empty()).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LByteStringStoreOuterClass$ByteStringStore;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroidx/datastore/core/CorruptionException;

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider$provideAuidDataStore$1;->invoke(Landroidx/datastore/core/CorruptionException;)LByteStringStoreOuterClass$ByteStringStore;

    move-result-object p1

    return-object p1
.end method
