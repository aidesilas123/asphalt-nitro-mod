###### Class io.didomi.drawable.Q2 (io.didomi.sdk.Q2)
.class public final Lio/didomi/sdk/Q2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/Q2$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00172\u00020\u0001:\u0001\rB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001d\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\r\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\r\u0010\u0011R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0012R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lio/didomi/sdk/Q2;",
        "",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Lio/didomi/sdk/V8;",
        "vendorRepository",
        "<init>",
        "(Lio/didomi/sdk/H;Lio/didomi/sdk/V8;)V",
        "Landroid/content/SharedPreferences;",
        "preferences",
        "Lio/didomi/sdk/V;",
        "consentRepository",
        "",
        "a",
        "(Landroid/content/SharedPreferences;Lio/didomi/sdk/V;)V",
        "sharedPreferences",
        "",
        "(Landroid/content/SharedPreferences;)Ljava/lang/String;",
        "Lio/didomi/sdk/V8;",
        "Lio/didomi/sdk/models/GoogleConfig;",
        "b",
        "Lio/didomi/sdk/models/GoogleConfig;",
        "googleConfig",
        "c",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final c:Lio/didomi/sdk/Q2$a;


# instance fields
.field private final a:Lio/didomi/sdk/V8;

.field private final b:Lio/didomi/sdk/models/GoogleConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/Q2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/Q2$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/Q2;->c:Lio/didomi/sdk/Q2$a;

    return-void
.end method

.method public constructor <init>(Lio/didomi/sdk/H;Lio/didomi/sdk/V8;)V
    .registers 4

    const-string v0, "configurationRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/didomi/sdk/Q2;->a:Lio/didomi/sdk/V8;

    invoke-virtual {p1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k$a;->m()Lio/didomi/sdk/k$a$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k$a$b;->c()Lio/didomi/sdk/models/GoogleConfig;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/Q2;->b:Lio/didomi/sdk/models/GoogleConfig;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .registers 4

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "IABTCF_AddtlConsent"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/SharedPreferences;Lio/didomi/sdk/V;)V
    .registers 5

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/Q2;->a:Lio/didomi/sdk/V8;

    invoke-static {v0}, Lio/didomi/sdk/W8;->a(Lio/didomi/sdk/V8;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lio/didomi/sdk/Q2;->b:Lio/didomi/sdk/models/GoogleConfig;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lio/didomi/sdk/models/GoogleConfig;->getAdditionalConsent()Lio/didomi/sdk/models/AdditionalConsent;

    move-result-object v0

    if-eqz v0, :cond_40

    const-string v1, "google"

    invoke-virtual {p2, v1}, Lio/didomi/sdk/V;->b(Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;

    move-result-object p2

    sget-object v1, Lio/didomi/sdk/consent/model/ConsentStatus;->ENABLE:Lio/didomi/sdk/consent/model/ConsentStatus;

    if-ne p2, v1, :cond_2c

    invoke-virtual {v0}, Lio/didomi/sdk/models/AdditionalConsent;->getPositive()Ljava/lang/String;

    move-result-object p2

    goto :goto_30

    :cond_2c
    invoke-virtual {v0}, Lio/didomi/sdk/models/AdditionalConsent;->getNegative()Ljava/lang/String;

    move-result-object p2

    :goto_30
    if-nez p2, :cond_33

    goto :goto_40

    :cond_33
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "IABTCF_AddtlConsent"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_40
    :goto_40
    return-void
.end method

###### Class io.didomi.drawable.Q2.Companion (io.didomi.sdk.Q2$a)
.class public final Lio/didomi/sdk/Q2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/Q2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lio/didomi/sdk/Q2$a;",
        "",
        "<init>",
        "()V",
        "",
        "preferencesKey",
        "Ljava/lang/String;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/Q2$a;-><init>()V

    return-void
.end method
