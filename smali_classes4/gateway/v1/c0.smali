###### Class gateway.v1.c0 (gateway.v1.c0)
.class public final Lgateway/v1/c0;
.super Ljava/lang/Object;
.source "NativeConfigurationKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/c0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 92\u00020\u0001:\u00019B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\'\u001a\u00020(H\u0001J\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020*J\u0006\u0010,\u001a\u00020*J\u0006\u0010-\u001a\u00020*J\u0006\u0010.\u001a\u00020*J\u0006\u0010/\u001a\u00020*J\u0006\u00100\u001a\u00020*J\u0006\u00101\u001a\u000202J\u0006\u00103\u001a\u000202J\u0006\u00104\u001a\u000202J\u0006\u00105\u001a\u000202J\u0006\u00106\u001a\u000202J\u0006\u00107\u001a\u000202J\u0006\u00108\u001a\u000202R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR$\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010\u000f\"\u0004\u0008 \u0010\u0011R$\u0010!\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010\u000f\"\u0004\u0008#\u0010\u0011R$\u0010$\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008%\u0010\u000f\"\u0004\u0008&\u0010\u0011\u00a8\u0006:"
    }
    d2 = {
        "Lgateway/v1/NativeConfigurationKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;",
        "(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;)V",
        "value",
        "Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;",
        "adOperations",
        "getAdOperations",
        "()Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;",
        "setAdOperations",
        "(Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;",
        "adPolicy",
        "getAdPolicy",
        "()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;",
        "setAdPolicy",
        "(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V",
        "Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;",
        "diagnosticEvents",
        "getDiagnosticEvents",
        "()Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;",
        "setDiagnosticEvents",
        "(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V",
        "Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;",
        "featureFlags",
        "getFeatureFlags",
        "()Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;",
        "setFeatureFlags",
        "(Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;)V",
        "initPolicy",
        "getInitPolicy",
        "setInitPolicy",
        "operativeEventPolicy",
        "getOperativeEventPolicy",
        "setOperativeEventPolicy",
        "otherPolicy",
        "getOtherPolicy",
        "setOtherPolicy",
        "_build",
        "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;",
        "clearAdOperations",
        "",
        "clearAdPolicy",
        "clearDiagnosticEvents",
        "clearFeatureFlags",
        "clearInitPolicy",
        "clearOperativeEventPolicy",
        "clearOtherPolicy",
        "hasAdOperations",
        "",
        "hasAdPolicy",
        "hasDiagnosticEvents",
        "hasFeatureFlags",
        "hasInitPolicy",
        "hasOperativeEventPolicy",
        "hasOtherPolicy",
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
.field public static final a:Lgateway/v1/c0$a;


# instance fields
.field private final b:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/c0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/c0$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/c0;->a:Lgateway/v1/c0$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/c0;->b:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/c0;-><init>(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 3

    iget-object v0, p0, Lgateway/v1/c0;->b:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object v0
.end method

.method public final b(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/c0;->b:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;->b(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;

    return-void
.end method

.method public final c(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/c0;->b:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;->d(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;

    return-void
.end method

.method public final d(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/c0;->b:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;->e(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;

    return-void
.end method

.method public final e(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/c0;->b:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;->f(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;

    return-void
.end method

.method public final f(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/c0;->b:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;

    invoke-virtual {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;->g(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;

    return-void
.end method
