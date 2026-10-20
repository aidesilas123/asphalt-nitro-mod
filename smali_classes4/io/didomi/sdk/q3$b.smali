###### Class io.didomi.drawable.C1870q3.b (io.didomi.sdk.q3$b)
.class final Lio/didomi/sdk/q3$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/q3;->a(Ljava/util/Collection;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/p<",
        "Lio/didomi/sdk/models/InternalVendor;",
        "Lio/didomi/sdk/models/InternalVendor;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lio/didomi/sdk/models/InternalVendor;",
        "firstVendor",
        "secondVendor",
        "",
        "a",
        "(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/Integer;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lio/didomi/sdk/q3$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/q3$b;

    invoke-direct {v0}, Lio/didomi/sdk/q3$b;-><init>()V

    sput-object v0, Lio/didomi/sdk/q3$b;->a:Lio/didomi/sdk/q3$b;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/Integer;
    .registers 4

    const-string v0, "firstVendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondVendor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lio/didomi/sdk/models/InternalVendor;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lkotlin/text/g;->compareTo(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lio/didomi/sdk/models/InternalVendor;

    check-cast p2, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/q3$b;->a(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
