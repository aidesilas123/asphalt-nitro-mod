###### Class gateway.v1.p (gateway.v1.p)
.class public final Lgateway/v1/p;
.super Ljava/lang/Object;
.source "DiagnosticEventsConfigurationKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/p$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u001c\n\u0002\u0008\u0012\u0008\u0007\u0018\u0000 E2\u00020\u0001:\u0003CDEB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\'\u001a\u00020(H\u0001J\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020*J\u0006\u0010,\u001a\u00020*J\u0006\u0010-\u001a\u00020*J\u0006\u0010.\u001a\u00020*J%\u0010/\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\u000e\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u00080J%\u0010/\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000c0\u00062\u0006\u0010\u000e\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u00081J+\u00102\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u000704H\u0007\u00a2\u0006\u0002\u00085J+\u00102\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000c0\u00062\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u000704H\u0007\u00a2\u0006\u0002\u00086J\u001d\u00107\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0007\u00a2\u0006\u0002\u00088J\u001d\u00107\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000c0\u0006H\u0007\u00a2\u0006\u0002\u00089J&\u0010:\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010\u000e\u001a\u00020\u0007H\u0087\n\u00a2\u0006\u0002\u0008;J,\u0010:\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u000704H\u0087\n\u00a2\u0006\u0002\u0008<J&\u0010:\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000c0\u00062\u0006\u0010\u000e\u001a\u00020\u0007H\u0087\n\u00a2\u0006\u0002\u0008=J,\u0010:\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000c0\u00062\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u000704H\u0087\n\u00a2\u0006\u0002\u0008>J.\u0010?\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00062\u0006\u0010@\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u0007H\u0087\u0002\u00a2\u0006\u0002\u0008AJ.\u0010?\u001a\u00020**\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000c0\u00062\u0006\u0010@\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u0007H\u0087\u0002\u00a2\u0006\u0002\u0008BR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u001d\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000c0\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\nR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u00158G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR$\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u00158G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u0018\"\u0004\u0008\u001d\u0010\u001aR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u000e\u001a\u00020\u001e8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R$\u0010$\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008%\u0010\u0012\"\u0004\u0008&\u0010\u0014\u00a8\u0006F"
    }
    d2 = {
        "Lgateway/v1/DiagnosticEventsConfigurationKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;",
        "(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;)V",
        "allowedEvents",
        "Lcom/google/protobuf/kotlin/DslList;",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;",
        "Lgateway/v1/DiagnosticEventsConfigurationKt$Dsl$AllowedEventsProxy;",
        "getAllowedEvents",
        "()Lcom/google/protobuf/kotlin/DslList;",
        "blockedEvents",
        "Lgateway/v1/DiagnosticEventsConfigurationKt$Dsl$BlockedEventsProxy;",
        "getBlockedEvents",
        "value",
        "",
        "enabled",
        "getEnabled",
        "()Z",
        "setEnabled",
        "(Z)V",
        "",
        "maxBatchIntervalMs",
        "getMaxBatchIntervalMs",
        "()I",
        "setMaxBatchIntervalMs",
        "(I)V",
        "maxBatchSize",
        "getMaxBatchSize",
        "setMaxBatchSize",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;",
        "severity",
        "getSeverity",
        "()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;",
        "setSeverity",
        "(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;)V",
        "ttmEnabled",
        "getTtmEnabled",
        "setTtmEnabled",
        "_build",
        "Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;",
        "clearEnabled",
        "",
        "clearMaxBatchIntervalMs",
        "clearMaxBatchSize",
        "clearSeverity",
        "clearTtmEnabled",
        "add",
        "addAllowedEvents",
        "addBlockedEvents",
        "addAll",
        "values",
        "",
        "addAllAllowedEvents",
        "addAllBlockedEvents",
        "clear",
        "clearAllowedEvents",
        "clearBlockedEvents",
        "plusAssign",
        "plusAssignAllowedEvents",
        "plusAssignAllAllowedEvents",
        "plusAssignBlockedEvents",
        "plusAssignAllBlockedEvents",
        "set",
        "index",
        "setAllowedEvents",
        "setBlockedEvents",
        "AllowedEventsProxy",
        "BlockedEventsProxy",
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
.field public static final a:Lgateway/v1/p$a;


# instance fields
.field private final b:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/p$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/p;->a:Lgateway/v1/p$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/p;->b:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/p;-><init>(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .registers 3

    iget-object v0, p0, Lgateway/v1/p;->b:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-object v0
.end method

.method public final b(Z)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/p;->b:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;->b(Z)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;

    return-void
.end method

.method public final c(I)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/p;->b:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;->d(I)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;

    return-void
.end method

.method public final d(I)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/p;->b:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;->e(I)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;

    return-void
.end method

.method public final e(Z)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/p;->b:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;->f(Z)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;

    return-void
.end method

###### Class gateway.v1.p.a (gateway.v1.p$a)
.class public final Lgateway/v1/p$a;
.super Ljava/lang/Object;
.source "DiagnosticEventsConfigurationKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/p;
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
        "Lgateway/v1/DiagnosticEventsConfigurationKt$Dsl$Companion;",
        "",
        "()V",
        "_create",
        "Lgateway/v1/DiagnosticEventsConfigurationKt$Dsl;",
        "builder",
        "Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$Builder;",
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

    invoke-direct {p0}, Lgateway/v1/p$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;)Lgateway/v1/p;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lgateway/v1/p;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgateway/v1/p;-><init>(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;Lkotlin/jvm/internal/n;)V

    return-object v0
.end method
