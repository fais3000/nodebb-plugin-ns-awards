<!-- BEGIN awards -->
<div class="row awards-overview">

    <div class="col-md-2">
        <img src="{awards.picture}" class="img-responsive"/>
    </div>
    <div class="col-md-5 award-summary">
        <span class="award-title">{awards.name}</span>
        <span class="award-desc">{awards.desc}</span>
    </div>
    <div class="col-md-5 award-owners">
        <!-- BEGIN awards.grants -->
        <span class="award-recipient"><a href="./user/{awards.grants.user.userslug}">{awards.grants.user.username}</a></span>
        <!-- END awards.grants -->
    </div>
</div>
<!-- END awards -->