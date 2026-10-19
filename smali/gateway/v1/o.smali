###### Class gateway.v1.o (gateway.v1.o)
.class public final Lgateway/v1/o;
.super Ljava/lang/Object;
.source "DiagnosticEventRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/o$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u001c\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001e\u001fB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0001J%\u0010\r\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\u000f\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u0008\u0010J+\u0010\u0011\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0013H\u0007\u00a2\u0006\u0002\u0008\u0014J\u001d\u0010\u0015\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0007\u00a2\u0006\u0002\u0008\u0016J&\u0010\u0017\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\u000f\u001a\u00020\u0007H\u0087\n\u00a2\u0006\u0002\u0008\u0018J,\u0010\u0017\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0013H\u0087\n\u00a2\u0006\u0002\u0008\u0019J.\u0010\u001a\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u0007H\u0087\u0002\u00a2\u0006\u0002\u0008\u001dR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006 "
    }
    d2 = {
        "Lgateway/v1/DiagnosticEventRequestKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$Builder;",
        "(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$Builder;)V",
        "batch",
        "Lcom/google/protobuf/kotlin/DslList;",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;",
        "Lgateway/v1/DiagnosticEventRequestKt$Dsl$BatchProxy;",
        "getBatch",
        "()Lcom/google/protobuf/kotlin/DslList;",
        "_build",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;",
        "add",
        "",
        "value",
        "addBatch",
        "addAll",
        "values",
        "",
        "addAllBatch",
        "clear",
        "clearBatch",
        "plusAssign",
        "plusAssignBatch",
        "plusAssignAllBatch",
        "set",
        "index",
        "",
        "setBatch",
        "BatchProxy",
        "Companion",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lgateway/v1/o$a;


# instance fields
.field private final b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/o$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/o;->a:Lgateway/v1/o$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/o;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/o;-><init>(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;
    .registers 3

    iget-object v0, p0, Lgateway/v1/o;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    return-object v0
.end method

.method public final synthetic b(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lgateway/v1/o;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$a;

    invoke-virtual {p1, p2}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$a;->b(Ljava/lang/Iterable;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$a;

    return-void
.end method

.method public final synthetic c()Lcom/google/protobuf/kotlin/a;
    .registers 4

    new-instance v0, Lcom/google/protobuf/kotlin/a;

    iget-object v1, p0, Lgateway/v1/o;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$a;

    invoke-virtual {v1}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$a;->d()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getBatchList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

###### Class gateway.v1.o.a (gateway.v1.o$a)
.class public final Lgateway/v1/o$a;
.super Ljava/lang/Object;
.source "DiagnosticEventRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "Lgateway/v1/DiagnosticEventRequestKt$Dsl$Companion;",
        "",
        "()V",
        "_create",
        "Lgateway/v1/DiagnosticEventRequestKt$Dsl;",
        "builder",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$Builder;",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$a;)Lgateway/v1/o;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lgateway/v1/o;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgateway/v1/o;-><init>(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$a;Lkotlin/jvm/internal/n;)V

    return-object v0
.end method
