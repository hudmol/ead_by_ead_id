class ArchivesSpaceService < Sinatra::Base

  Endpoint.get('/plugins/ead_by_ead_id/repositories/:repo_id/resources/:ead_id')
    .description("Get the EAD XML for a resource via ead_id")
    .params(["repo_id", :repo_id],
            ["ead_id", String])
    .permissions([:view_repository])
    .returns([200, "(:resource)"]) \
  do
    resources_with_ead_id = Resource.this_repo.filter(:ead_id => params[:ead_id])

    raise NotFoundException.new('Resource not found') if resources_with_ead_id.empty?

    redirect to("/repositories/#{params[:repo_id]}/resource_descriptions/#{resources_with_ead_id.first.id}.xml")
  end

end
