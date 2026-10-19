###### Class io.didomi.drawable.E3 (io.didomi.sdk.E3)
.class public final Lio/didomi/sdk/E3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/h3;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JE\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0014R\u001a\u0010\u001a\u001a\u00020\u00158\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lio/didomi/sdk/E3;",
        "Lio/didomi/sdk/h3;",
        "<init>",
        "()V",
        "Landroid/content/SharedPreferences;",
        "sharedPreferences",
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
        "",
        "a",
        "(Landroid/content/SharedPreferences;Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/k;Lio/didomi/sdk/d3;Ljava/util/List;Ljava/lang/String;)V",
        "(Landroid/content/SharedPreferences;)Ljava/lang/String;",
        "",
        "b",
        "I",
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


# instance fields
.field private final b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lio/didomi/sdk/E3;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .registers 3

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/SharedPreferences;Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/k;Lio/didomi/sdk/d3;Ljava/util/List;Ljava/lang/String;)V
    .registers 8
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

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "appConfiguration"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "vendorList"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "publisherRestrictions"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "languageCode"

    invoke-static {p6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lio/didomi/sdk/h3;->a:Lio/didomi/sdk/h3$a;

    invoke-virtual {p2, p3, p1, p4}, Lio/didomi/sdk/h3$a;->a(Lio/didomi/sdk/k;Landroid/content/SharedPreferences;Lio/didomi/sdk/d3;)V

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/h3$b;->a(Lio/didomi/sdk/h3;Landroid/content/SharedPreferences;Z)V

    return-void
.end method

.method public a(Lio/didomi/sdk/H;Landroid/content/SharedPreferences;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/h3$b;->a(Lio/didomi/sdk/h3;Lio/didomi/sdk/H;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public b(Landroid/content/SharedPreferences;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/h3$b;->a(Lio/didomi/sdk/h3;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public getVersion()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/E3;->b:I

    return v0
.end method
