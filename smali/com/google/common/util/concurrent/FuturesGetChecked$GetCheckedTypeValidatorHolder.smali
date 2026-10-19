###### Class com.google.common.util.concurrent.FuturesGetChecked.GetCheckedTypeValidatorHolder (com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidatorHolder)
.class Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder;
.super Ljava/lang/Object;
.source "FuturesGetChecked.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/FuturesGetChecked;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetCheckedTypeValidatorHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder$WeakSetValidator;
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/util/concurrent/FuturesGetChecked$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder;->a()Lcom/google/common/util/concurrent/FuturesGetChecked$b;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder;->a:Lcom/google/common/util/concurrent/FuturesGetChecked$b;

    return-void
.end method

.method static a()Lcom/google/common/util/concurrent/FuturesGetChecked$b;
    .registers 1

    invoke-static {}, Lcom/google/common/util/concurrent/FuturesGetChecked;->k()Lcom/google/common/util/concurrent/FuturesGetChecked$b;

    move-result-object v0

    return-object v0
.end method
