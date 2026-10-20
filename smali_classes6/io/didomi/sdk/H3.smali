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
