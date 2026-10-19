###### Class io.didomi.drawable.InterfaceC1780h3 (io.didomi.sdk.h3)
.class public interface abstract Lio/didomi/sdk/h3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/h3$a;,
        Lio/didomi/sdk/h3$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008f\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006JE\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0011\u001a\u00020\u0010H&\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0016J\u001f\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0019J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0012\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001b8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lio/didomi/sdk/h3;",
        "",
        "Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "",
        "b",
        "(Landroid/content/SharedPreferences;)V",
        "Lio/didomi/sdk/consent/model/ConsentToken;",
        "consentToken",
        "Lio/didomi/sdk/k;",
        "appConfiguration",
        "Lio/didomi/sdk/d3;",
        "vendorList",
        "",
        "Lio/didomi/sdk/k4;",
        "publisherRestrictions",
        "",
        "languageCode",
        "a",
        "(Landroid/content/SharedPreferences;Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/k;Lio/didomi/sdk/d3;Ljava/util/List;Ljava/lang/String;)V",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "(Lio/didomi/sdk/H;Landroid/content/SharedPreferences;)V",
        "",
        "subjectToGDPR",
        "(Landroid/content/SharedPreferences;Z)V",
        "(Landroid/content/SharedPreferences;)Ljava/lang/String;",
        "",
        "getVersion",
        "()I",
        "version",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lio/didomi/sdk/h3$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lio/didomi/sdk/h3$a;->a:Lio/didomi/sdk/h3$a;

    sput-object v0, Lio/didomi/sdk/h3;->a:Lio/didomi/sdk/h3$a;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/SharedPreferences;)Ljava/lang/String;
.end method

.method public abstract a(Landroid/content/SharedPreferences;Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/k;Lio/didomi/sdk/d3;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Lio/didomi/sdk/consent/model/ConsentToken;",
            "Lio/didomi/sdk/k;",
            "Lio/didomi/sdk/d3;",
            "Ljava/util/List<",
            "Lio/didomi/sdk/k4;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/SharedPreferences;Z)V
.end method

.method public abstract a(Lio/didomi/sdk/H;Landroid/content/SharedPreferences;)V
.end method

.method public abstract b(Landroid/content/SharedPreferences;)V
.end method

.method public abstract getVersion()I
.end method

###### Class io.didomi.drawable.InterfaceC1780h3.a (io.didomi.sdk.h3$a)
.class public final Lio/didomi/sdk/h3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/h3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J%\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u000b\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/didomi/sdk/h3$a;",
        "",
        "<init>",
        "()V",
        "Lio/didomi/sdk/k;",
        "appConfiguration",
        "Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "Lio/didomi/sdk/d3;",
        "vendorList",
        "",
        "a",
        "(Lio/didomi/sdk/k;Landroid/content/SharedPreferences;Lio/didomi/sdk/d3;)V",
        "Landroid/content/SharedPreferences$Editor;",
        "sharedPreferencesEditor",
        "",
        "cmpId",
        "(Landroid/content/SharedPreferences$Editor;I)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field static final synthetic a:Lio/didomi/sdk/h3$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/h3$a;

    invoke-direct {v0}, Lio/didomi/sdk/h3$a;-><init>()V

    sput-object v0, Lio/didomi/sdk/h3$a;->a:Lio/didomi/sdk/h3$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/SharedPreferences$Editor;I)V
    .registers 4

    const-string v0, "sharedPreferencesEditor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "IABTCF_CmpSdkID"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x7

    if-eq p2, v0, :cond_12

    const-string v0, "Didomi_Custom_CMPID"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_12
    return-void
.end method

.method public final a(Lio/didomi/sdk/k;Landroid/content/SharedPreferences;Lio/didomi/sdk/d3;)V
    .registers 5

    const-string v0, "appConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "editor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/didomi/sdk/l;->a(Lio/didomi/sdk/k;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lio/didomi/sdk/h3$a;->a(Landroid/content/SharedPreferences$Editor;I)V

    invoke-virtual {p1}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k$a;->m()Lio/didomi/sdk/k$a$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k$a$b;->d()Lio/didomi/sdk/k$a$b$a;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k$a$b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Lio/didomi/sdk/k$a$b$a;->c()Z

    move-result p1

    if-eqz p1, :cond_40

    invoke-interface {p3}, Lio/didomi/sdk/d3;->getTcfPolicyVersion()I

    move-result p1

    const-string p3, "IABTCF_PolicyVersion"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_40
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

###### Class io.didomi.drawable.InterfaceC1780h3.b (io.didomi.sdk.h3$b)
.class public final Lio/didomi/sdk/h3$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/h3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Lio/didomi/sdk/h3;Landroid/content/SharedPreferences;)V
    .registers 2

    const-string p0, "sharedPreferences"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lio/didomi/sdk/h3;Landroid/content/SharedPreferences;Z)V
    .registers 3

    const-string p0, "sharedPreferences"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "IABTCF_gdprApplies"

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(Lio/didomi/sdk/h3;Lio/didomi/sdk/H;Landroid/content/SharedPreferences;)V
    .registers 10

    const-string v0, "configurationRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/l;->a(Lio/didomi/sdk/k;)I

    move-result v0

    const-string v1, "IABTCF_CmpSdkID"

    const/4 v2, -0x1

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "Didomi_Custom_CMPID"

    invoke-interface {p2, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_2d

    if-eq v1, v0, :cond_2b

    const/4 v6, 0x7

    if-eq v1, v6, :cond_2b

    if-eq v1, v3, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v1, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v1, 0x1

    :goto_2e
    const-string v3, "IABTCF_CmpSdkVersion"

    invoke-interface {p2, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_37

    const/4 v4, 0x1

    :cond_37
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-nez v1, :cond_3f

    if-eqz v4, :cond_50

    :cond_3f
    if-eqz v1, :cond_4b

    sget-object v1, Lio/didomi/sdk/h3;->a:Lio/didomi/sdk/h3$a;

    const-string v6, "sharedPreferencesEditor"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lio/didomi/sdk/h3$a;->a(Landroid/content/SharedPreferences$Editor;I)V

    :cond_4b
    if-eqz v4, :cond_50

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_50
    invoke-virtual {p1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k;->c()Lio/didomi/sdk/k$d;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k$d;->a()Lio/didomi/sdk/k$d$a;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k$d$a;->a()Lio/didomi/sdk/k$d$a$a;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k$d$a$a;->a()Z

    move-result p1

    const-string v0, "IABTCF_EnableAdvertiserConsentMode"

    invoke-interface {v2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p0, p2}, Lio/didomi/sdk/h3;->b(Landroid/content/SharedPreferences;)V

    return-void
.end method
