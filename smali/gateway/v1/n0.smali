###### Class gateway.v1.n0 (gateway.v1.n0)
.class public final Lgateway/v1/n0;
.super Ljava/lang/Object;
.source "StaticDeviceInfoKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/n0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u00080\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0008\u0007\u0018\u0000 `2\u00020\u0001:\u0001`B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010<\u001a\u00020=H\u0001J\u0006\u0010>\u001a\u00020?J\u0006\u0010@\u001a\u00020?J\u0006\u0010A\u001a\u00020?J\u0006\u0010B\u001a\u00020?J\u0006\u0010C\u001a\u00020?J\u0006\u0010D\u001a\u00020?J\u0006\u0010E\u001a\u00020?J\u0006\u0010F\u001a\u00020?J\u0006\u0010G\u001a\u00020?J\u0006\u0010H\u001a\u00020?J\u0006\u0010I\u001a\u00020?J\u0006\u0010J\u001a\u00020?J\u0006\u0010K\u001a\u00020?J\u0006\u0010L\u001a\u00020?J\u0006\u0010M\u001a\u00020?J\u0006\u0010N\u001a\u00020?J\u0006\u0010O\u001a\u00020PJ\u0006\u0010Q\u001a\u00020PJ\u0006\u0010R\u001a\u00020PJ\u0006\u0010S\u001a\u00020PJ\u0006\u0010T\u001a\u00020PJ\u0006\u0010U\u001a\u00020PJ\u0006\u0010V\u001a\u00020PJ\u0006\u0010W\u001a\u00020PJ\u0006\u0010X\u001a\u00020PJ\u0006\u0010Y\u001a\u00020PJ\u0006\u0010Z\u001a\u00020PJ\u0006\u0010[\u001a\u00020PJ\u0006\u0010\\\u001a\u00020PJ\u0006\u0010]\u001a\u00020PJ\u0006\u0010^\u001a\u00020PJ\u0006\u0010_\u001a\u00020PR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\t\"\u0004\u0008\u0014\u0010\u000bR$\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0016\u0010\t\"\u0004\u0008\u0017\u0010\u000bR$\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\t\"\u0004\u0008\u001a\u0010\u000bR$\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\t\"\u0004\u0008\u001d\u0010\u000bR$\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010\t\"\u0004\u0008 \u0010\u000bR$\u0010!\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010\t\"\u0004\u0008#\u0010\u000bR$\u0010$\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008%\u0010\t\"\u0004\u0008&\u0010\u000bR$\u0010\'\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008(\u0010\t\"\u0004\u0008)\u0010\u000bR$\u0010*\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008+\u0010\t\"\u0004\u0008,\u0010\u000bR$\u0010-\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008.\u0010\t\"\u0004\u0008/\u0010\u000bR$\u00100\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00081\u0010\t\"\u0004\u00082\u0010\u000bR$\u00103\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00084\u0010\t\"\u0004\u00085\u0010\u000bR$\u00106\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00087\u0010\u000f\"\u0004\u00088\u0010\u0011R$\u00109\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008:\u0010\u000f\"\u0004\u0008;\u0010\u0011\u00a8\u0006a"
    }
    d2 = {
        "Lgateway/v1/StaticDeviceInfoKt$AndroidKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;",
        "(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;)V",
        "value",
        "",
        "androidFingerprint",
        "getAndroidFingerprint",
        "()Ljava/lang/String;",
        "setAndroidFingerprint",
        "(Ljava/lang/String;)V",
        "",
        "apiLevel",
        "getApiLevel",
        "()I",
        "setApiLevel",
        "(I)V",
        "apkDeveloperSigningCertificateHash",
        "getApkDeveloperSigningCertificateHash",
        "setApkDeveloperSigningCertificateHash",
        "appInstaller",
        "getAppInstaller",
        "setAppInstaller",
        "buildBoard",
        "getBuildBoard",
        "setBuildBoard",
        "buildBootloader",
        "getBuildBootloader",
        "setBuildBootloader",
        "buildBrand",
        "getBuildBrand",
        "setBuildBrand",
        "buildDevice",
        "getBuildDevice",
        "setBuildDevice",
        "buildDisplay",
        "getBuildDisplay",
        "setBuildDisplay",
        "buildFingerprint",
        "getBuildFingerprint",
        "setBuildFingerprint",
        "buildHardware",
        "getBuildHardware",
        "setBuildHardware",
        "buildHost",
        "getBuildHost",
        "setBuildHost",
        "buildId",
        "getBuildId",
        "setBuildId",
        "buildProduct",
        "getBuildProduct",
        "setBuildProduct",
        "extensionVersion",
        "getExtensionVersion",
        "setExtensionVersion",
        "versionCode",
        "getVersionCode",
        "setVersionCode",
        "_build",
        "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android;",
        "clearAndroidFingerprint",
        "",
        "clearApiLevel",
        "clearApkDeveloperSigningCertificateHash",
        "clearAppInstaller",
        "clearBuildBoard",
        "clearBuildBootloader",
        "clearBuildBrand",
        "clearBuildDevice",
        "clearBuildDisplay",
        "clearBuildFingerprint",
        "clearBuildHardware",
        "clearBuildHost",
        "clearBuildId",
        "clearBuildProduct",
        "clearExtensionVersion",
        "clearVersionCode",
        "hasAndroidFingerprint",
        "",
        "hasApiLevel",
        "hasApkDeveloperSigningCertificateHash",
        "hasAppInstaller",
        "hasBuildBoard",
        "hasBuildBootloader",
        "hasBuildBrand",
        "hasBuildDevice",
        "hasBuildDisplay",
        "hasBuildFingerprint",
        "hasBuildHardware",
        "hasBuildHost",
        "hasBuildId",
        "hasBuildProduct",
        "hasExtensionVersion",
        "hasVersionCode",
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
.field public static final a:Lgateway/v1/n0$a;


# instance fields
.field private final b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/n0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/n0$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/n0;->a:Lgateway/v1/n0$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/n0;->b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/n0;-><init>(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android;
    .registers 3

    iget-object v0, p0, Lgateway/v1/n0;->b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/n0;->b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;->b(Ljava/lang/String;)Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    return-void
.end method

.method public final c(I)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/n0;->b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;->d(I)Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/n0;->b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;->e(Ljava/lang/String;)Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/n0;->b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;->f(Ljava/lang/String;)Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/n0;->b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;->g(Ljava/lang/String;)Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/n0;->b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;->h(Ljava/lang/String;)Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/n0;->b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;->i(Ljava/lang/String;)Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/n0;->b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;->j(Ljava/lang/String;)Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/n0;->b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;->k(Ljava/lang/String;)Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/n0;->b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;->l(Ljava/lang/String;)Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/n0;->b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;->m(Ljava/lang/String;)Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/n0;->b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;->n(Ljava/lang/String;)Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/n0;->b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;->o(Ljava/lang/String;)Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/n0;->b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;->p(Ljava/lang/String;)Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    return-void
.end method

.method public final p(I)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/n0;->b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;->q(I)Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    return-void
.end method

.method public final q(I)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/n0;->b:Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    invoke-virtual {v0, p1}, Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;->r(I)Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;

    return-void
.end method

###### Class gateway.v1.n0.a (gateway.v1.n0$a)
.class public final Lgateway/v1/n0$a;
.super Ljava/lang/Object;
.source "StaticDeviceInfoKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/n0;
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
        "Lgateway/v1/StaticDeviceInfoKt$AndroidKt$Dsl$Companion;",
        "",
        "()V",
        "_create",
        "Lgateway/v1/StaticDeviceInfoKt$AndroidKt$Dsl;",
        "builder",
        "Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;",
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

    invoke-direct {p0}, Lgateway/v1/n0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;)Lgateway/v1/n0;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lgateway/v1/n0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgateway/v1/n0;-><init>(Lgateway/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$a;Lkotlin/jvm/internal/n;)V

    return-object v0
.end method
