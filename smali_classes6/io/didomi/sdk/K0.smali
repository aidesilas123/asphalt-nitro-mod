###### Class io.didomi.drawable.K0 (io.didomi.sdk.K0)
.class public final Lio/didomi/sdk/K0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J=\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R$\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00138\u0006@BX\u0086.\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0011\u0010\u0017R$\u0010 \u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR$\u0010(\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R$\u00100\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R$\u00108\u001a\u0004\u0018\u0001018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107\u00a8\u00069"
    }
    d2 = {
        "Lio/didomi/sdk/K0;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lio/didomi/sdk/M2;",
        "eventsRepository",
        "Lio/didomi/sdk/F8;",
        "userAgentRepository",
        "Lio/didomi/sdk/P3;",
        "organizationUserRepository",
        "Lio/didomi/sdk/z3;",
        "localPropertiesRepository",
        "Lio/didomi/sdk/DidomiInitializeParameters;",
        "parameters",
        "",
        "a",
        "(Landroid/content/Context;Lio/didomi/sdk/M2;Lio/didomi/sdk/F8;Lio/didomi/sdk/P3;Lio/didomi/sdk/z3;Lio/didomi/sdk/DidomiInitializeParameters;)V",
        "Lio/didomi/sdk/J0;",
        "<set-?>",
        "b",
        "Lio/didomi/sdk/J0;",
        "()Lio/didomi/sdk/J0;",
        "component",
        "Lio/didomi/sdk/F;",
        "c",
        "Lio/didomi/sdk/F;",
        "getConfigurationModule",
        "()Lio/didomi/sdk/F;",
        "setConfigurationModule",
        "(Lio/didomi/sdk/F;)V",
        "configurationModule",
        "Lio/didomi/sdk/L;",
        "d",
        "Lio/didomi/sdk/L;",
        "getConsentModule",
        "()Lio/didomi/sdk/L;",
        "setConsentModule",
        "(Lio/didomi/sdk/L;)V",
        "consentModule",
        "Lio/didomi/sdk/T2;",
        "e",
        "Lio/didomi/sdk/T2;",
        "getHelperModule",
        "()Lio/didomi/sdk/T2;",
        "setHelperModule",
        "(Lio/didomi/sdk/T2;)V",
        "helperModule",
        "Lio/didomi/sdk/m5;",
        "f",
        "Lio/didomi/sdk/m5;",
        "getRepositoryModule",
        "()Lio/didomi/sdk/m5;",
        "setRepositoryModule",
        "(Lio/didomi/sdk/m5;)V",
        "repositoryModule",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lio/didomi/sdk/K0;

.field private static b:Lio/didomi/sdk/J0;

.field private static c:Lio/didomi/sdk/F;

.field private static d:Lio/didomi/sdk/L;

.field private static e:Lio/didomi/sdk/T2;

.field private static f:Lio/didomi/sdk/m5;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/K0;

    invoke-direct {v0}, Lio/didomi/sdk/K0;-><init>()V

    sput-object v0, Lio/didomi/sdk/K0;->a:Lio/didomi/sdk/K0;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/J0;
    .registers 2

    sget-object v0, Lio/didomi/sdk/K0;->b:Lio/didomi/sdk/J0;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "component"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lio/didomi/sdk/M2;Lio/didomi/sdk/F8;Lio/didomi/sdk/P3;Lio/didomi/sdk/z3;Lio/didomi/sdk/DidomiInitializeParameters;)V
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgentRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "organizationUserRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localPropertiesRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/didomi/sdk/l0;->a()Lio/didomi/sdk/l0$b;

    move-result-object v0

    new-instance v1, Lio/didomi/sdk/g;

    invoke-direct {v1}, Lio/didomi/sdk/g;-><init>()V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/l0$b;->a(Lio/didomi/sdk/g;)Lio/didomi/sdk/l0$b;

    move-result-object v0

    new-instance v1, Lio/didomi/sdk/b0;

    invoke-direct {v1, p1}, Lio/didomi/sdk/b0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/l0$b;->a(Lio/didomi/sdk/b0;)Lio/didomi/sdk/l0$b;

    move-result-object p1

    new-instance v0, Lio/didomi/sdk/K2;

    invoke-direct {v0, p2}, Lio/didomi/sdk/K2;-><init>(Lio/didomi/sdk/M2;)V

    invoke-virtual {p1, v0}, Lio/didomi/sdk/l0$b;->a(Lio/didomi/sdk/K2;)Lio/didomi/sdk/l0$b;

    move-result-object p1

    new-instance p2, Lio/didomi/sdk/Q3;

    invoke-direct {p2, p6, p3, p4, p5}, Lio/didomi/sdk/Q3;-><init>(Lio/didomi/sdk/DidomiInitializeParameters;Lio/didomi/sdk/F8;Lio/didomi/sdk/P3;Lio/didomi/sdk/z3;)V

    invoke-virtual {p1, p2}, Lio/didomi/sdk/l0$b;->a(Lio/didomi/sdk/Q3;)Lio/didomi/sdk/l0$b;

    move-result-object p1

    const-string p2, "builder()\n            .a\u2026calPropertiesRepository))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lio/didomi/sdk/K0;->c:Lio/didomi/sdk/F;

    if-eqz p2, :cond_52

    invoke-virtual {p1, p2}, Lio/didomi/sdk/l0$b;->a(Lio/didomi/sdk/F;)Lio/didomi/sdk/l0$b;

    :cond_52
    sget-object p2, Lio/didomi/sdk/K0;->d:Lio/didomi/sdk/L;

    if-eqz p2, :cond_59

    invoke-virtual {p1, p2}, Lio/didomi/sdk/l0$b;->a(Lio/didomi/sdk/L;)Lio/didomi/sdk/l0$b;

    :cond_59
    sget-object p2, Lio/didomi/sdk/K0;->e:Lio/didomi/sdk/T2;

    if-eqz p2, :cond_60

    invoke-virtual {p1, p2}, Lio/didomi/sdk/l0$b;->a(Lio/didomi/sdk/T2;)Lio/didomi/sdk/l0$b;

    :cond_60
    sget-object p2, Lio/didomi/sdk/K0;->f:Lio/didomi/sdk/m5;

    if-eqz p2, :cond_67

    invoke-virtual {p1, p2}, Lio/didomi/sdk/l0$b;->a(Lio/didomi/sdk/m5;)Lio/didomi/sdk/l0$b;

    :cond_67
    invoke-virtual {p1}, Lio/didomi/sdk/l0$b;->a()Lio/didomi/sdk/J0;

    move-result-object p1

    const-string p2, "builder.build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lio/didomi/sdk/K0;->b:Lio/didomi/sdk/J0;

    return-void
.end method
