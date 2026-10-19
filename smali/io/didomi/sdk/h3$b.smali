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
