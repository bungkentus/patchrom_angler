.class Landroid/accounts/AccountManager$1;
.super Landroid/content/BroadcastReceiver;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AccountManager;

    .prologue
    .line 2489
    iput-object p1, p0, Landroid/accounts/AccountManager$1;->this$0:Landroid/accounts/AccountManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2491
    iget-object v3, p0, Landroid/accounts/AccountManager$1;->this$0:Landroid/accounts/AccountManager;

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 2493
    .local v0, "accounts":[Landroid/accounts/Account;
    iget-object v3, p0, Landroid/accounts/AccountManager$1;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v3}, Landroid/accounts/AccountManager;->-get0(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 2495
    :try_start_0
    iget-object v3, p0, Landroid/accounts/AccountManager$1;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v3}, Landroid/accounts/AccountManager;->-get0(Landroid/accounts/AccountManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 2494
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2496
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;>;"
    iget-object v6, p0, Landroid/accounts/AccountManager$1;->this$0:Landroid/accounts/AccountManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/OnAccountsUpdateListener;

    invoke-static {v6, v3, v4, v0}, Landroid/accounts/AccountManager;->-wrap3(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2493
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3

    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v5

    .line 2490
    return-void
.end method
