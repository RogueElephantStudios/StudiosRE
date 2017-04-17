if request.POST:
    required = {'username', 'email', 'first_name', 'last_name', 'password', 
    'address_1', 'city', 'state', 'zip_code'}
    if not (required <= set(request.POST)):
        return render( request, 'profiles/create.html', { 'missing' : required - set(request.POST) } )
    username = request.POST['username']
    email = request.POST['email']
    if (not Profile.is_unique(email)):
        return render( request, 'profiles/create.html', {'message' : 'Email address already exists!'} )
    first_name = request.POST['first_name']
    last_name = request.POST['last_name']
    password = request.POST['password']
    address_1 = request.POST['address_1']
    address_2 = request.POST['address_2'] if 'address_2' in request.POST else None
    city = request.POST['city']
    state = request.POST['state']
    zip_code = request.POST['zip_code']
    new_id = Create(username, email, first_name, last_name, password, address_1,
        city, state, zip_code, address_2)
    return redirect('profiles.views.Details', profile_id = new_id)
else:
    return render(request, 'profiles/create.html')